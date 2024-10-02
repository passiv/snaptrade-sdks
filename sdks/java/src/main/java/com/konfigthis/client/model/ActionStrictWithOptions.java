/*
 * SnapTrade
 * Connect brokerage accounts to your app for live positions and trading
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: api@snaptrade.com
 *
 * NOTE: This class is auto generated by Konfig (https://konfigthis.com).
 * Do not edit the class manually.
 */


package com.konfigthis.client.model;

import java.util.Objects;
import java.util.Arrays;
import io.swagger.annotations.ApiModel;
import com.google.gson.annotations.SerializedName;

import java.io.IOException;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;

/**
 * The action describes the intent or side of a trade. This is either &#x60;BUY&#x60; or &#x60;SELL&#x60; for Equity symbols or &#x60;BUY_TO_OPEN&#x60;, &#x60;BUY_TO_CLOSE&#x60;, &#x60;SELL_TO_OPEN&#x60; or &#x60;SELL_TO_CLOSE&#x60; for Options.
 */
@JsonAdapter(ActionStrictWithOptions.Adapter.class)public enum ActionStrictWithOptions {
  
  BUY("BUY"),
  
  SELL("SELL"),
  
  BUY_TO_OPEN("BUY_TO_OPEN"),
  
  BUY_TO_CLOSE("BUY_TO_CLOSE"),
  
  SELL_TO_OPEN("SELL_TO_OPEN"),
  
  SELL_TO_CLOSE("SELL_TO_CLOSE");

  private String value;

  ActionStrictWithOptions(String value) {
    this.value = value;
  }

  public String getValue() {
    return value;
  }

  @Override
  public String toString() {
    return String.valueOf(value);
  }

  public static ActionStrictWithOptions fromValue(String value) {
    for (ActionStrictWithOptions b : ActionStrictWithOptions.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }

  public static class Adapter extends TypeAdapter<ActionStrictWithOptions> {
    @Override
    public void write(final JsonWriter jsonWriter, final ActionStrictWithOptions enumeration) throws IOException {
      jsonWriter.value(enumeration.getValue());
    }

    @Override
    public ActionStrictWithOptions read(final JsonReader jsonReader) throws IOException {
      String value = jsonReader.nextString();
      return ActionStrictWithOptions.fromValue(value);
    }
  }
}

