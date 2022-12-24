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
import com.konfigthis.client.model.UniversalSymbol;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.math.BigDecimal;

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
 * Symbols and Tickers Quotes object
 */
@ApiModel(description = "Symbols and Tickers Quotes object")
@javax.annotation.Generated(value = "Generated by https://konfigthis.com")
public class SymbolsQuotes {
  public static final String SERIALIZED_NAME_SYMBOL = "symbol";
  @SerializedName(SERIALIZED_NAME_SYMBOL)
  private UniversalSymbol symbol;

  public static final String SERIALIZED_NAME_BID_PRICE = "bid_price";
  @SerializedName(SERIALIZED_NAME_BID_PRICE)
  private BigDecimal bidPrice;

  public static final String SERIALIZED_NAME_ASK_PRICE = "ask_price";
  @SerializedName(SERIALIZED_NAME_ASK_PRICE)
  private BigDecimal askPrice;

  public static final String SERIALIZED_NAME_LAST_TRADE_PRICE = "last_trade_price";
  @SerializedName(SERIALIZED_NAME_LAST_TRADE_PRICE)
  private BigDecimal lastTradePrice;

  public static final String SERIALIZED_NAME_BID_SIZE = "bid_size";
  @SerializedName(SERIALIZED_NAME_BID_SIZE)
  private BigDecimal bidSize;

  public static final String SERIALIZED_NAME_ASK_SIZE = "ask_size";
  @SerializedName(SERIALIZED_NAME_ASK_SIZE)
  private BigDecimal askSize;

  public SymbolsQuotes() {
  }

  public SymbolsQuotes symbol(UniversalSymbol symbol) {
    
    this.symbol = symbol;
    return this;
  }

   /**
   * Get symbol
   * @return symbol
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public UniversalSymbol getSymbol() {
    return symbol;
  }


  public void setSymbol(UniversalSymbol symbol) {
    this.symbol = symbol;
  }


  public SymbolsQuotes bidPrice(BigDecimal bidPrice) {
    
    this.bidPrice = bidPrice;
    return this;
  }

   /**
   * Get bidPrice
   * @return bidPrice
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "8.43", value = "")

  public BigDecimal getBidPrice() {
    return bidPrice;
  }


  public void setBidPrice(BigDecimal bidPrice) {
    this.bidPrice = bidPrice;
  }


  public SymbolsQuotes askPrice(BigDecimal askPrice) {
    
    this.askPrice = askPrice;
    return this;
  }

   /**
   * Get askPrice
   * @return askPrice
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "8.43", value = "")

  public BigDecimal getAskPrice() {
    return askPrice;
  }


  public void setAskPrice(BigDecimal askPrice) {
    this.askPrice = askPrice;
  }


  public SymbolsQuotes lastTradePrice(BigDecimal lastTradePrice) {
    
    this.lastTradePrice = lastTradePrice;
    return this;
  }

   /**
   * Get lastTradePrice
   * @return lastTradePrice
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "8.74", value = "")

  public BigDecimal getLastTradePrice() {
    return lastTradePrice;
  }


  public void setLastTradePrice(BigDecimal lastTradePrice) {
    this.lastTradePrice = lastTradePrice;
  }


  public SymbolsQuotes bidSize(BigDecimal bidSize) {
    
    this.bidSize = bidSize;
    return this;
  }

   /**
   * Get bidSize
   * @return bidSize
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "260", value = "")

  public BigDecimal getBidSize() {
    return bidSize;
  }


  public void setBidSize(BigDecimal bidSize) {
    this.bidSize = bidSize;
  }


  public SymbolsQuotes askSize(BigDecimal askSize) {
    
    this.askSize = askSize;
    return this;
  }

   /**
   * Get askSize
   * @return askSize
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "344", value = "")

  public BigDecimal getAskSize() {
    return askSize;
  }


  public void setAskSize(BigDecimal askSize) {
    this.askSize = askSize;
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
   * @return the SymbolsQuotes instance itself
   */
  public SymbolsQuotes putAdditionalProperty(String key, Object value) {
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
    SymbolsQuotes symbolsQuotes = (SymbolsQuotes) o;
    return Objects.equals(this.symbol, symbolsQuotes.symbol) &&
        Objects.equals(this.bidPrice, symbolsQuotes.bidPrice) &&
        Objects.equals(this.askPrice, symbolsQuotes.askPrice) &&
        Objects.equals(this.lastTradePrice, symbolsQuotes.lastTradePrice) &&
        Objects.equals(this.bidSize, symbolsQuotes.bidSize) &&
        Objects.equals(this.askSize, symbolsQuotes.askSize)&&
        Objects.equals(this.additionalProperties, symbolsQuotes.additionalProperties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(symbol, bidPrice, askPrice, lastTradePrice, bidSize, askSize, additionalProperties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SymbolsQuotes {\n");
    sb.append("    symbol: ").append(toIndentedString(symbol)).append("\n");
    sb.append("    bidPrice: ").append(toIndentedString(bidPrice)).append("\n");
    sb.append("    askPrice: ").append(toIndentedString(askPrice)).append("\n");
    sb.append("    lastTradePrice: ").append(toIndentedString(lastTradePrice)).append("\n");
    sb.append("    bidSize: ").append(toIndentedString(bidSize)).append("\n");
    sb.append("    askSize: ").append(toIndentedString(askSize)).append("\n");
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
    openapiFields.add("symbol");
    openapiFields.add("bid_price");
    openapiFields.add("ask_price");
    openapiFields.add("last_trade_price");
    openapiFields.add("bid_size");
    openapiFields.add("ask_size");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to SymbolsQuotes
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!SymbolsQuotes.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in SymbolsQuotes is not found in the empty JSON string", SymbolsQuotes.openapiRequiredFields.toString()));
        }
      }
      // validate the optional field `symbol`
      if (jsonObj.get("symbol") != null && !jsonObj.get("symbol").isJsonNull()) {
        UniversalSymbol.validateJsonObject(jsonObj.getAsJsonObject("symbol"));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SymbolsQuotes.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SymbolsQuotes' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SymbolsQuotes> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SymbolsQuotes.class));

       return (TypeAdapter<T>) new TypeAdapter<SymbolsQuotes>() {
           @Override
           public void write(JsonWriter out, SymbolsQuotes value) throws IOException {
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
                 else {
                   obj.add(entry.getKey(), gson.toJsonTree(entry.getValue()).getAsJsonObject());
                 }
               }
             }
             elementAdapter.write(out, obj);
           }

           @Override
           public SymbolsQuotes read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             // store additional fields in the deserialized instance
             SymbolsQuotes instance = thisAdapter.fromJsonTree(jsonObj);
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
  * Create an instance of SymbolsQuotes given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of SymbolsQuotes
  * @throws IOException if the JSON string is invalid with respect to SymbolsQuotes
  */
  public static SymbolsQuotes fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SymbolsQuotes.class);
  }

 /**
  * Convert an instance of SymbolsQuotes to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}
