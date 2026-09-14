package snaptrade

import (
	"encoding/json"
	"reflect"
	"strings"
	"testing"
)

const regressionStock = `{"kind":"stock","id":"1ef3a5d3-4a9b-40b2-b8d1-cc35f74d6324","symbol":"AAPL","raw_symbol":"AAPL","description":"Synthetic stock","currency":"USD","exchange":"XNAS"}`
const regressionBond = `{"kind":"bond","id":"b3013f9f-5842-43e6-b59a-f2af039836f9","symbol":"SYNTHETIC","description":"Synthetic bond","currency":"USD"}`

func TestAccountPositionsRegression(t *testing.T) {
	stock := `{"instrument":` + regressionStock + `,"units":12,"price":230.5,"cost_basis":180,"currency":"USD"}`
	bond := `{"instrument":` + regressionBond + `,"units":5,"price":99.5,"cost_basis":98,"currency":"USD"}`
	valid := `{"results":[` + stock + `,` + bond + `],"data_freshness":{"last_successful_sync":"2026-09-10T12:00:00Z"}}`
	for _, tc := range []struct {
		name, body string
		invalid    bool
	}{
		{"valid", valid, false},
		{"numeric_instrument_id", strings.Replace(valid, `"1ef3a5d3-4a9b-40b2-b8d1-cc35f74d6324"`, `42`, 1), true},
		{"missing_kind", strings.Replace(valid, `"kind":"stock",`, ``, 1), true},
		{"unknown_kind", strings.Replace(valid, `"kind":"stock"`, `"kind":"unknown"`, 1), true},
		{"wrong_results_type", `{"results":"invalid"}`, true},
	} {
		t.Run(tc.name, func(t *testing.T) {
			positions, response, err := decodingRegressionClient(tc.body).AccountInformationApi.GetAllAccountPositions("user", "secret", "account").Execute()
			assertDecodingResponseBody(t, response, tc.body)
			if (err != nil) != tc.invalid {
				t.Fatalf("invalid=%v, error=%v", tc.invalid, err)
			}
			if tc.invalid {
				return
			}
			if positions == nil || len(positions.Results) != 2 {
				t.Fatalf("positions lost: %+v", positions)
			}
			first, second := positions.Results[0], positions.Results[1]
			if first.Instrument.StockInstrument == nil || first.Instrument.StockInstrument.GetId() != "1ef3a5d3-4a9b-40b2-b8d1-cc35f74d6324" || first.Instrument.StockInstrument.GetSymbol() != "AAPL" || first.Instrument.StockInstrument.GetKind() != "stock" || first.GetUnits() != 12 || first.GetPrice() != 230.5 || first.GetCostBasis() != 180 {
				t.Fatalf("stock data lost: %+v", first)
			}
			if second.Instrument.OtherInstrument == nil || second.Instrument.OtherInstrument.GetId() != "b3013f9f-5842-43e6-b59a-f2af039836f9" || second.Instrument.OtherInstrument.GetKind() != "bond" || second.GetUnits() != 5 || second.GetPrice() != 99.5 || second.GetCostBasis() != 98 {
				t.Fatalf("bond data lost: %+v", second)
			}
			encoded, err := json.Marshal(positions)
			if err != nil {
				t.Fatal(err)
			}
			var roundTrip AllAccountPositionsResponse
			if err := json.Unmarshal(encoded, &roundTrip); err != nil {
				t.Fatal(err)
			}
			if !reflect.DeepEqual(*positions, roundTrip) {
				t.Fatal("round trip changed positions")
			}
		})
	}
}
