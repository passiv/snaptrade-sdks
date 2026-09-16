import type {
  Instrument,
  OtherInstrument,
  UnderlyingCfdInstrument,
  UnderlyingOptionInstrument,
} from "./models";

const bondInstrument = {
  kind: "bond",
  id: "1ef3a5d3-4a9b-40b2-b8d1-cc35f74d6324",
  symbol: "US912810TM09",
  raw_symbol: "US912810TM09",
} satisfies OtherInstrument;

const otherInstrument = {
  ...bondInstrument,
  kind: "other",
} satisfies OtherInstrument;

it("keeps every discriminator alias that targets OtherInstrument", () => {
  const aliases: [
    Instrument,
    Instrument,
    UnderlyingOptionInstrument,
    UnderlyingCfdInstrument,
  ] = [bondInstrument, otherInstrument, bondInstrument, bondInstrument];

  expect(aliases.map(({ kind }) => kind)).toEqual([
    "bond",
    "other",
    "bond",
    "bond",
  ]);
});
