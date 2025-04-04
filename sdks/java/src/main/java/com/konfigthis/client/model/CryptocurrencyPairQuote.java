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
import java.math.BigDecimal;
import java.time.OffsetDateTime;

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
import org.apache.commons.lang3.StringUtils;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import com.konfigthis.client.JSON;

/**
 * CryptocurrencyPairQuote
 */@javax.annotation.Generated(value = "Generated by https://konfigthis.com")
public class CryptocurrencyPairQuote {
  public static final String SERIALIZED_NAME_BID = "bid";
  @SerializedName(SERIALIZED_NAME_BID)
  private BigDecimal bid;

  public static final String SERIALIZED_NAME_ASK = "ask";
  @SerializedName(SERIALIZED_NAME_ASK)
  private BigDecimal ask;

  public static final String SERIALIZED_NAME_MID = "mid";
  @SerializedName(SERIALIZED_NAME_MID)
  private BigDecimal mid;

  public static final String SERIALIZED_NAME_TIMESTAMP = "timestamp";
  @SerializedName(SERIALIZED_NAME_TIMESTAMP)
  private OffsetDateTime timestamp;

  public CryptocurrencyPairQuote() {
  }

  public CryptocurrencyPairQuote bid(BigDecimal bid) {
    
    
    
    
    this.bid = bid;
    return this;
  }

   /**
   * The highest price a buyer is willing to pay.
   * @return bid
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(example = "123.45", required = true, value = "The highest price a buyer is willing to pay.")

  public BigDecimal getBid() {
    return bid;
  }


  public void setBid(BigDecimal bid) {
    
    
    
    this.bid = bid;
  }


  public CryptocurrencyPairQuote ask(BigDecimal ask) {
    
    
    
    
    this.ask = ask;
    return this;
  }

   /**
   * The lowest price a seller is willing to accept.
   * @return ask
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(example = "123.45", required = true, value = "The lowest price a seller is willing to accept.")

  public BigDecimal getAsk() {
    return ask;
  }


  public void setAsk(BigDecimal ask) {
    
    
    
    this.ask = ask;
  }


  public CryptocurrencyPairQuote mid(BigDecimal mid) {
    
    
    
    
    this.mid = mid;
    return this;
  }

   /**
   * The market mid price.
   * @return mid
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "123.45", value = "The market mid price.")

  public BigDecimal getMid() {
    return mid;
  }


  public void setMid(BigDecimal mid) {
    
    
    
    this.mid = mid;
  }


  public CryptocurrencyPairQuote timestamp(OffsetDateTime timestamp) {
    
    
    
    
    this.timestamp = timestamp;
    return this;
  }

   /**
   * The timestamp of the quote.
   * @return timestamp
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "2024-01-24T15:00Z", value = "The timestamp of the quote.")

  public OffsetDateTime getTimestamp() {
    return timestamp;
  }


  public void setTimestamp(OffsetDateTime timestamp) {
    
    
    
    this.timestamp = timestamp;
  }

  /**
   * A container for additional, undeclared properties.
   * This is a holder for any undeclared properties as specified with
   * the 'additionalProperties' keyword in the OAS document.
   */
  private Map<String, Object> additionalProperties;

  /**
   * Set the additional (undeclared) property with the specified name and value.
   * If the property does not already exist, create it otherwise replace it.
   *
   * @param key name of the property
   * @param value value of the property
   * @return the CryptocurrencyPairQuote instance itself
   */
  public CryptocurrencyPairQuote putAdditionalProperty(String key, Object value) {
    if (this.additionalProperties == null) {
        this.additionalProperties = new HashMap<String, Object>();
    }
    this.additionalProperties.put(key, value);
    return this;
  }

  /**
   * Return the additional (undeclared) property.
   *
   * @return a map of objects
   */
  public Map<String, Object> getAdditionalProperties() {
    return additionalProperties;
  }

  /**
   * Return the additional (undeclared) property with the specified name.
   *
   * @param key name of the property
   * @return an object
   */
  public Object getAdditionalProperty(String key) {
    if (this.additionalProperties == null) {
        return null;
    }
    return this.additionalProperties.get(key);
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CryptocurrencyPairQuote cryptocurrencyPairQuote = (CryptocurrencyPairQuote) o;
    return Objects.equals(this.bid, cryptocurrencyPairQuote.bid) &&
        Objects.equals(this.ask, cryptocurrencyPairQuote.ask) &&
        Objects.equals(this.mid, cryptocurrencyPairQuote.mid) &&
        Objects.equals(this.timestamp, cryptocurrencyPairQuote.timestamp)&&
        Objects.equals(this.additionalProperties, cryptocurrencyPairQuote.additionalProperties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(bid, ask, mid, timestamp, additionalProperties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CryptocurrencyPairQuote {\n");
    sb.append("    bid: ").append(toIndentedString(bid)).append("\n");
    sb.append("    ask: ").append(toIndentedString(ask)).append("\n");
    sb.append("    mid: ").append(toIndentedString(mid)).append("\n");
    sb.append("    timestamp: ").append(toIndentedString(timestamp)).append("\n");
    sb.append("    additionalProperties: ").append(toIndentedString(additionalProperties)).append("\n");
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
    openapiFields.add("bid");
    openapiFields.add("ask");
    openapiFields.add("mid");
    openapiFields.add("timestamp");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("bid");
    openapiRequiredFields.add("ask");
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to CryptocurrencyPairQuote
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!CryptocurrencyPairQuote.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in CryptocurrencyPairQuote is not found in the empty JSON string", CryptocurrencyPairQuote.openapiRequiredFields.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : CryptocurrencyPairQuote.openapiRequiredFields) {
        if (jsonObj.get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonObj.toString()));
        }
      }
      if (!jsonObj.get("bid").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `bid` to be a primitive type in the JSON string but got `%s`", jsonObj.get("bid").toString()));
      }
      if (!jsonObj.get("ask").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `ask` to be a primitive type in the JSON string but got `%s`", jsonObj.get("ask").toString()));
      }
      if ((jsonObj.get("mid") != null && !jsonObj.get("mid").isJsonNull()) && !jsonObj.get("mid").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `mid` to be a primitive type in the JSON string but got `%s`", jsonObj.get("mid").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!CryptocurrencyPairQuote.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'CryptocurrencyPairQuote' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<CryptocurrencyPairQuote> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(CryptocurrencyPairQuote.class));

       return (TypeAdapter<T>) new TypeAdapter<CryptocurrencyPairQuote>() {
           @Override
           public void write(JsonWriter out, CryptocurrencyPairQuote value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             obj.remove("additionalProperties");
             // serialize additonal properties
             if (value.getAdditionalProperties() != null) {
               for (Map.Entry<String, Object> entry : value.getAdditionalProperties().entrySet()) {
                 if (entry.getValue() instanceof String)
                   obj.addProperty(entry.getKey(), (String) entry.getValue());
                 else if (entry.getValue() instanceof Number)
                   obj.addProperty(entry.getKey(), (Number) entry.getValue());
                 else if (entry.getValue() instanceof Boolean)
                   obj.addProperty(entry.getKey(), (Boolean) entry.getValue());
                 else if (entry.getValue() instanceof Character)
                   obj.addProperty(entry.getKey(), (Character) entry.getValue());
                 else if (entry.getValue() == null) {
                   obj.addProperty(entry.getKey(), (String) null);
                 } else {
                   obj.add(entry.getKey(), gson.toJsonTree(entry.getValue()).getAsJsonObject());
                 }
               }
             }
             elementAdapter.write(out, obj);
           }

           @Override
           public CryptocurrencyPairQuote read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             // store additional fields in the deserialized instance
             CryptocurrencyPairQuote instance = thisAdapter.fromJsonTree(jsonObj);
             for (Map.Entry<String, JsonElement> entry : jsonObj.entrySet()) {
               if (!openapiFields.contains(entry.getKey())) {
                 if (entry.getValue().isJsonPrimitive()) { // primitive type
                   if (entry.getValue().getAsJsonPrimitive().isString())
                     instance.putAdditionalProperty(entry.getKey(), entry.getValue().getAsString());
                   else if (entry.getValue().getAsJsonPrimitive().isNumber())
                     instance.putAdditionalProperty(entry.getKey(), entry.getValue().getAsNumber());
                   else if (entry.getValue().getAsJsonPrimitive().isBoolean())
                     instance.putAdditionalProperty(entry.getKey(), entry.getValue().getAsBoolean());
                   else
                     throw new IllegalArgumentException(String.format("The field `%s` has unknown primitive type. Value: %s", entry.getKey(), entry.getValue().toString()));
                 } else if (entry.getValue().isJsonArray()) {
                     instance.putAdditionalProperty(entry.getKey(), gson.fromJson(entry.getValue(), List.class));
                 } else { // JSON object
                     instance.putAdditionalProperty(entry.getKey(), gson.fromJson(entry.getValue(), HashMap.class));
                 }
               }
             }
             return instance;
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of CryptocurrencyPairQuote given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of CryptocurrencyPairQuote
  * @throws IOException if the JSON string is invalid with respect to CryptocurrencyPairQuote
  */
  public static CryptocurrencyPairQuote fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, CryptocurrencyPairQuote.class);
  }

 /**
  * Convert an instance of CryptocurrencyPairQuote to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

