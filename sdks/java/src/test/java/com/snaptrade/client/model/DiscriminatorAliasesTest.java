package com.snaptrade.client.model;

import static org.junit.jupiter.api.Assertions.assertEquals;

import com.snaptrade.client.JSON;
import org.junit.jupiter.api.Test;

class DiscriminatorAliasesTest {
  @Test
  void otherInstrumentSupportsEverySharedDiscriminatorValue() throws Exception {
    new JSON();

    OtherInstrument bond = OtherInstrument.fromJson(
        "{\"kind\":\"bond\","
            + "\"id\":\"1ef3a5d3-4a9b-40b2-b8d1-cc35f74d6324\","
            + "\"symbol\":\"US912810TM09\","
            + "\"raw_symbol\":\"US912810TM09\","
            + "\"description\":null,\"currency\":null,\"exchange\":null,"
            + "\"figi_instrument\":null}"
    );
    OtherInstrument other = OtherInstrument.fromJson(
        "{\"kind\":\"other\","
            + "\"id\":\"1ef3a5d3-4a9b-40b2-b8d1-cc35f74d6324\","
            + "\"symbol\":\"US912810TM09\","
            + "\"raw_symbol\":\"US912810TM09\","
            + "\"description\":null,\"currency\":null,\"exchange\":null,"
            + "\"figi_instrument\":null}"
    );

    assertEquals(OtherInstrument.KindEnum.BOND, bond.getKind());
    assertEquals(OtherInstrument.KindEnum.OTHER, other.getKind());
  }
}
