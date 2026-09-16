from snaptrade_client.model.instrument import Instrument
from snaptrade_client.model.other_instrument import OtherInstrument
from snaptrade_client.model.underlying_cfd_instrument import UnderlyingCfdInstrument
from snaptrade_client.model.underlying_option_instrument import UnderlyingOptionInstrument


def test_shared_discriminator_targets_keep_every_alias():
    for union in (Instrument, UnderlyingOptionInstrument, UnderlyingCfdInstrument):
        mapping = union.MetaOapg.discriminator()["kind"]

        assert mapping["bond"] is OtherInstrument
        assert mapping["other"] is OtherInstrument


def test_other_instrument_accepts_bond_kind():
    assert OtherInstrument.MetaOapg.properties.kind.BOND == "bond"
