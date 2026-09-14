package snaptrade

import (
	"encoding/json"
	"io/ioutil"
	"net/http"
	"reflect"
	"strings"
	"testing"

	snaptrade "github.com/passiv/snaptrade-sdks/sdks/go/v2"
)

// These requests never leave the process and need no real credentials.
type decodingRegressionTransport struct{ body string }

func (f decodingRegressionTransport) RoundTrip(r *http.Request) (*http.Response, error) {
	return &http.Response{StatusCode: 200, Header: http.Header{"Content-Type": {"application/json"}}, Body: ioutil.NopCloser(strings.NewReader(f.body)), Request: r}, nil
}

func decodingRegressionClient(body string) *snaptrade.APIClient {
	config := snaptrade.NewConfiguration()
	config.HTTPClient = &http.Client{Transport: decodingRegressionTransport{body}}
	config.SetConsumerKey("synthetic-key")
	config.SetPartnerClientId("synthetic-client")
	return snaptrade.NewAPIClient(config)
}

func assertDecodingResponseBody(t *testing.T, response *http.Response, want string) {
	t.Helper()
	if response == nil {
		t.Fatal("missing HTTP response")
	}
	defer response.Body.Close()
	body, err := ioutil.ReadAll(response.Body)
	if err != nil || string(body) != want {
		t.Fatalf("HTTP body was not preserved: %q, %v", body, err)
	}
}

const regressionConnection = `{"id":"87b24961-b51e-4db8-9226-f198f6518a89","brokerage":{"id":"ebf91a5b-0920-4266-9e36-f6cfe8c40946","name":"Synthetic Brokerage"},"data_freshness_mode":{"institution":"realtime","snaptrade":"delayed"},"extension":{"enabled":true}}`

func TestConnectionDecodingRegression(t *testing.T) {
	for _, tc := range []struct {
		name    string
		body    string
		invalid bool
	}{
		{"valid", regressionConnection, false},
		{"old_freshness_string", strings.Replace(regressionConnection, `{"institution":"realtime","snaptrade":"delayed"}`, `"delayed"`, 1), true},
		{"numeric_id", strings.Replace(regressionConnection, `"87b24961-b51e-4db8-9226-f198f6518a89"`, `42`, 1), true},
		{"numeric_brokerage_id", strings.Replace(regressionConnection, `"ebf91a5b-0920-4266-9e36-f6cfe8c40946"`, `42`, 1), true},
		{"numeric_institution", strings.Replace(regressionConnection, `"realtime"`, `42`, 1), true},
		{"wrong_type", `42`, true},
		{"malformed", `{"id":`, true},
	} {
		t.Run(tc.name, func(t *testing.T) {
			t.Run("direct", func(t *testing.T) {
				var connection snaptrade.BrokerageAuthorization
				err := json.Unmarshal([]byte(tc.body), &connection)
				if (err != nil) != tc.invalid {
					t.Fatalf("invalid=%v, error=%v", tc.invalid, err)
				}
				if !tc.invalid {
					assertRegressionConnection(t, connection)
				}
			})
			t.Run("detail", func(t *testing.T) {
				connection, response, err := decodingRegressionClient(tc.body).ConnectionsApi.DetailBrokerageAuthorization("connection", "user", "secret").Execute()
				assertDecodingResponseBody(t, response, tc.body)
				if (err != nil) != tc.invalid {
					t.Fatalf("invalid=%v, error=%v", tc.invalid, err)
				}
				if !tc.invalid {
					if connection == nil {
						t.Fatal("missing connection")
					}
					assertRegressionConnection(t, *connection)
				}
			})
			t.Run("list", func(t *testing.T) {
				body := "[" + regressionConnection + "," + tc.body + "]"
				connections, response, err := decodingRegressionClient(body).ConnectionsApi.ListBrokerageAuthorizations("user", "secret").Execute()
				assertDecodingResponseBody(t, response, body)
				if (err != nil) != tc.invalid {
					t.Fatalf("invalid=%v, error=%v", tc.invalid, err)
				}
				if !tc.invalid {
					if len(connections) != 2 {
						t.Fatalf("got %d connections", len(connections))
					}
					for _, connection := range connections {
						assertRegressionConnection(t, connection)
					}
				}
			})
		})
	}
	for _, body := range []string{`{}`, `{"brokerage":null,"disabled_date":null}`} {
		t.Run("optional_fields_"+body, func(t *testing.T) {
			var connection snaptrade.BrokerageAuthorization
			if err := json.Unmarshal([]byte(body), &connection); err != nil {
				t.Fatal(err)
			}
		})
	}
	t.Run("list_wrong_top_level", func(t *testing.T) {
		_, _, err := decodingRegressionClient(regressionConnection).ConnectionsApi.ListBrokerageAuthorizations("user", "secret").Execute()
		if err == nil {
			t.Fatal("object response must not decode as a list")
		}
	})
}

func assertRegressionConnection(t *testing.T, connection snaptrade.BrokerageAuthorization) {
	t.Helper()
	if connection.GetId() != "87b24961-b51e-4db8-9226-f198f6518a89" || connection.Brokerage == nil || connection.Brokerage.GetId() != "ebf91a5b-0920-4266-9e36-f6cfe8c40946" || connection.Brokerage.GetName() != "Synthetic Brokerage" {
		t.Fatalf("connection or brokerage data lost: %+v", connection)
	}
	if connection.DataFreshnessMode == nil || connection.DataFreshnessMode.GetInstitution() != "realtime" || connection.DataFreshnessMode.GetSnaptrade() != "delayed" {
		t.Fatalf("freshness data lost: %+v", connection.DataFreshnessMode)
	}
	if !reflect.DeepEqual(connection.AdditionalProperties["extension"], map[string]interface{}{"enabled": true}) {
		t.Fatal("additional properties lost")
	}
	encoded, err := json.Marshal(connection)
	if err != nil {
		t.Fatal(err)
	}
	var roundTrip snaptrade.BrokerageAuthorization
	if err := json.Unmarshal(encoded, &roundTrip); err != nil {
		t.Fatal(err)
	}
	if !reflect.DeepEqual(connection, roundTrip) {
		t.Fatal("round trip changed connection")
	}
}
