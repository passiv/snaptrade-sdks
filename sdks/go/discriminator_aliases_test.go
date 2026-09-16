package snaptrade

import (
	"encoding/json"
	"testing"
)

func TestSharedDiscriminatorAliasesMarshalThroughUnionWrappers(t *testing.T) {
	for _, kind := range []string{"bond", "other"} {
		t.Run(kind, func(t *testing.T) {
			otherInstrument := NewOtherInstrument(
				kind,
				"1ef3a5d3-4a9b-40b2-b8d1-cc35f74d6324",
				"US912810TM09",
				"US912810TM09",
			)
			wrappers := map[string]interface{}{
				"instrument":        OtherInstrumentAsInstrument(otherInstrument),
				"underlying-option": OtherInstrumentAsUnderlyingOptionInstrument(otherInstrument),
				"underlying-cfd":    OtherInstrumentAsUnderlyingCfdInstrument(otherInstrument),
			}

			for name, wrapper := range wrappers {
				t.Run(name, func(t *testing.T) {
					data, err := json.Marshal(wrapper)
					if err != nil {
						t.Fatalf("marshal union wrapper: %v", err)
					}

					var decoded map[string]interface{}
					if err := json.Unmarshal(data, &decoded); err != nil {
						t.Fatalf("unmarshal serialized payload: %v", err)
					}
					if decoded["kind"] != kind {
						t.Fatalf("expected kind %q, got %q", kind, decoded["kind"])
					}
				})
			}
		})
	}
}
