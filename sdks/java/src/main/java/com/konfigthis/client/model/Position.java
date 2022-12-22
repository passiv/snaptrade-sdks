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
import com.konfigthis.client.model.PositionSymbol;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.math.BigDecimal;
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
 * Account Position
 */
@ApiModel(description = "Account Position")
@javax.annotation.Generated(value = "Generated by https://konfigthis.com")
public class Position {
  public static final String SERIALIZED_NAME_SYMBOL = "symbol";
  @SerializedName(SERIALIZED_NAME_SYMBOL)
  private PositionSymbol symbol;

  public static final String SERIALIZED_NAME_UNITS = "units";
  @SerializedName(SERIALIZED_NAME_UNITS)
  private BigDecimal units;

  public static final String SERIALIZED_NAME_PRICE = "price";
  @SerializedName(SERIALIZED_NAME_PRICE)
  private BigDecimal price;

  public static final String SERIALIZED_NAME_OPEN_PNL = "open_pnl";
  @SerializedName(SERIALIZED_NAME_OPEN_PNL)
  private BigDecimal openPnl;

  public static final String SERIALIZED_NAME_FRACTIONAL_UNITS = "fractional_units";
  @SerializedName(SERIALIZED_NAME_FRACTIONAL_UNITS)
  private BigDecimal fractionalUnits;

  public static final String SERIALIZED_NAME_AVERAGE_PURCHASE_PRICE = "average_purchase_price";
  @SerializedName(SERIALIZED_NAME_AVERAGE_PURCHASE_PRICE)
  private BigDecimal averagePurchasePrice;

  public Position() {
  }

  public Position symbol(PositionSymbol symbol) {
    
    this.symbol = symbol;
    return this;
  }

   /**
   * Get symbol
   * @return symbol
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public PositionSymbol getSymbol() {
    return symbol;
  }


  public void setSymbol(PositionSymbol symbol) {
    this.symbol = symbol;
  }


  public Position units(BigDecimal units) {
    
    this.units = units;
    return this;
  }

   /**
   * Get units
   * @return units
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "40", value = "")

  public BigDecimal getUnits() {
    return units;
  }


  public void setUnits(BigDecimal units) {
    this.units = units;
  }


  public Position price(BigDecimal price) {
    
    this.price = price;
    return this;
  }

   /**
   * Last known market price for the symbol
   * @return price
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "113.15", value = "Last known market price for the symbol")

  public BigDecimal getPrice() {
    return price;
  }


  public void setPrice(BigDecimal price) {
    this.price = price;
  }


  public Position openPnl(BigDecimal openPnl) {
    
    this.openPnl = openPnl;
    return this;
  }

   /**
   * Get openPnl
   * @return openPnl
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "0.44", value = "")

  public BigDecimal getOpenPnl() {
    return openPnl;
  }


  public void setOpenPnl(BigDecimal openPnl) {
    this.openPnl = openPnl;
  }


  public Position fractionalUnits(BigDecimal fractionalUnits) {
    
    this.fractionalUnits = fractionalUnits;
    return this;
  }

   /**
   * Deprecated, use the units field for both fractional and integer units going forward
   * @return fractionalUnits
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "1.44", value = "Deprecated, use the units field for both fractional and integer units going forward")

  public BigDecimal getFractionalUnits() {
    return fractionalUnits;
  }


  public void setFractionalUnits(BigDecimal fractionalUnits) {
    this.fractionalUnits = fractionalUnits;
  }


  public Position averagePurchasePrice(BigDecimal averagePurchasePrice) {
    
    this.averagePurchasePrice = averagePurchasePrice;
    return this;
  }

   /**
   * Average purchase price for this position. Either returned by the underlying broker or calculated using historical transactions.
   * @return averagePurchasePrice
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "108.3353", value = "Average purchase price for this position. Either returned by the underlying broker or calculated using historical transactions.")

  public BigDecimal getAveragePurchasePrice() {
    return averagePurchasePrice;
  }


  public void setAveragePurchasePrice(BigDecimal averagePurchasePrice) {
    this.averagePurchasePrice = averagePurchasePrice;
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
   * @return the Position instance itself
   */
  public Position putAdditionalProperty(String key, Object value) {
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
    Position position = (Position) o;
    return Objects.equals(this.symbol, position.symbol) &&
        Objects.equals(this.units, position.units) &&
        Objects.equals(this.price, position.price) &&
        Objects.equals(this.openPnl, position.openPnl) &&
        Objects.equals(this.fractionalUnits, position.fractionalUnits) &&
        Objects.equals(this.averagePurchasePrice, position.averagePurchasePrice)&&
        Objects.equals(this.additionalProperties, position.additionalProperties);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(symbol, units, price, openPnl, fractionalUnits, averagePurchasePrice, additionalProperties);
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
    sb.append("class Position {\n");
    sb.append("    symbol: ").append(toIndentedString(symbol)).append("\n");
    sb.append("    units: ").append(toIndentedString(units)).append("\n");
    sb.append("    price: ").append(toIndentedString(price)).append("\n");
    sb.append("    openPnl: ").append(toIndentedString(openPnl)).append("\n");
    sb.append("    fractionalUnits: ").append(toIndentedString(fractionalUnits)).append("\n");
    sb.append("    averagePurchasePrice: ").append(toIndentedString(averagePurchasePrice)).append("\n");
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
    openapiFields.add("units");
    openapiFields.add("price");
    openapiFields.add("open_pnl");
    openapiFields.add("fractional_units");
    openapiFields.add("average_purchase_price");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to Position
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!Position.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in Position is not found in the empty JSON string", Position.openapiRequiredFields.toString()));
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!Position.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'Position' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<Position> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(Position.class));

       return (TypeAdapter<T>) new TypeAdapter<Position>() {
           @Override
           public void write(JsonWriter out, Position value) throws IOException {
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
           public Position read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             // store additional fields in the deserialized instance
             Position instance = thisAdapter.fromJsonTree(jsonObj);
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
  * Create an instance of Position given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of Position
  * @throws IOException if the JSON string is invalid with respect to Position
  */
  public static Position fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, Position.class);
  }

 /**
  * Convert an instance of Position to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

