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
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import org.openapitools.jackson.nullable.JsonNullable;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import com.konfigthis.client.JSON;

/**
 * TradeOcoPostRequest
 */
@javax.annotation.Generated(value = "Generated by https://konfigthis.com")
public class TradeOcoPostRequest {
  public static final String SERIALIZED_NAME_FIRST_TRADE_ID = "first_trade_id";
  @SerializedName(SERIALIZED_NAME_FIRST_TRADE_ID)
  private Object firstTradeId = null;

  public static final String SERIALIZED_NAME_SECOND_TRADE_ID = "second_trade_id";
  @SerializedName(SERIALIZED_NAME_SECOND_TRADE_ID)
  private Object secondTradeId = null;

  public TradeOcoPostRequest() {
  }

  public TradeOcoPostRequest firstTradeId(Object firstTradeId) {
    
    this.firstTradeId = firstTradeId;
    return this;
  }

   /**
   * The ID of first trade object obtained from trade/impact endpoint
   * @return firstTradeId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The ID of first trade object obtained from trade/impact endpoint")

  public Object getFirstTradeId() {
    return firstTradeId;
  }


  public void setFirstTradeId(Object firstTradeId) {
    this.firstTradeId = firstTradeId;
  }


  public TradeOcoPostRequest secondTradeId(Object secondTradeId) {
    
    this.secondTradeId = secondTradeId;
    return this;
  }

   /**
   * The ID of second trade object obtained from trade/impact endpoint
   * @return secondTradeId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The ID of second trade object obtained from trade/impact endpoint")

  public Object getSecondTradeId() {
    return secondTradeId;
  }


  public void setSecondTradeId(Object secondTradeId) {
    this.secondTradeId = secondTradeId;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    TradeOcoPostRequest tradeOcoPostRequest = (TradeOcoPostRequest) o;
    return Objects.equals(this.firstTradeId, tradeOcoPostRequest.firstTradeId) &&
        Objects.equals(this.secondTradeId, tradeOcoPostRequest.secondTradeId);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(firstTradeId, secondTradeId);
  }

  private static <T> int hashCodeNullable(JsonNullable<T> a) {
    if (a == null) {
      return 1;
    }
    return a.isPresent() ? Arrays.deepHashCode(new Object[]{a.get()}) : 31;
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class TradeOcoPostRequest {\n");
    sb.append("    firstTradeId: ").append(toIndentedString(firstTradeId)).append("\n");
    sb.append("    secondTradeId: ").append(toIndentedString(secondTradeId)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("first_trade_id");
    openapiFields.add("second_trade_id");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to TradeOcoPostRequest
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!TradeOcoPostRequest.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in TradeOcoPostRequest is not found in the empty JSON string", TradeOcoPostRequest.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!TradeOcoPostRequest.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `TradeOcoPostRequest` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!TradeOcoPostRequest.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'TradeOcoPostRequest' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<TradeOcoPostRequest> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(TradeOcoPostRequest.class));

       return (TypeAdapter<T>) new TypeAdapter<TradeOcoPostRequest>() {
           @Override
           public void write(JsonWriter out, TradeOcoPostRequest value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public TradeOcoPostRequest read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of TradeOcoPostRequest given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of TradeOcoPostRequest
  * @throws IOException if the JSON string is invalid with respect to TradeOcoPostRequest
  */
  public static TradeOcoPostRequest fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, TradeOcoPostRequest.class);
  }

 /**
  * Convert an instance of TradeOcoPostRequest to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

