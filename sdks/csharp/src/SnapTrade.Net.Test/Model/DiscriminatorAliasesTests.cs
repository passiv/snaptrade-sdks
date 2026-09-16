using Newtonsoft.Json;
using SnapTrade.Net.Model;
using Xunit;

namespace SnapTrade.Net.Test.Model
{
    public class DiscriminatorAliasesTests
    {
        [Theory]
        [InlineData("bond", OtherInstrument.KindEnum.Bond)]
        [InlineData("other", OtherInstrument.KindEnum.Other)]
        public void SharedDiscriminatorTargetsDeserializeAsOtherInstrument(
            string kind,
            OtherInstrument.KindEnum expectedKind)
        {
            string payload = "{"
                + "\"kind\":\"" + kind + "\","
                + "\"id\":\"1ef3a5d3-4a9b-40b2-b8d1-cc35f74d6324\","
                + "\"symbol\":\"US912810TM09\","
                + "\"raw_symbol\":\"US912810TM09\""
                + "}";

            Instrument instrument = JsonConvert.DeserializeObject<Instrument>(payload);
            UnderlyingOptionInstrument optionUnderlying =
                JsonConvert.DeserializeObject<UnderlyingOptionInstrument>(payload);
            UnderlyingCfdInstrument cfdUnderlying =
                JsonConvert.DeserializeObject<UnderlyingCfdInstrument>(payload);

            Assert.NotNull(instrument);
            Assert.Equal(expectedKind, instrument.GetOtherInstrument().Kind);
            Assert.Equal(expectedKind, optionUnderlying.GetOtherInstrument().Kind);
            Assert.Equal(expectedKind, cfdUnderlying.GetOtherInstrument().Kind);
        }
    }
}
