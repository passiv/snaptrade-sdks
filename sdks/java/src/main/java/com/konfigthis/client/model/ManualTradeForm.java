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
import com.konfigthis.client.model.Action;
import com.konfigthis.client.model.OrderType;
import com.konfigthis.client.model.TimeInForce;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.UUID;
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
 * Manual Trade Form
 */
@ApiModel(description = "Manual Trade Form")
@javax.annotation.Generated(value = "Generated by https://konfigthis.com")
public class ManualTradeForm {
  public static final String SERIALIZED_NAME_ACCOUNT_ID = "account_id";
  @SerializedName(SERIALIZED_NAME_ACCOUNT_ID)
  private UUID accountId;

  public static final String SERIALIZED_NAME_ACTION = "action";
  @SerializedName(SERIALIZED_NAME_ACTION)
  private Action action;

  public static final String SERIALIZED_NAME_ORDER_TYPE = "order_type";
  @SerializedName(SERIALIZED_NAME_ORDER_TYPE)
  private OrderType orderType;

  public static final String SERIALIZED_NAME_PRICE = "price";
  @SerializedName(SERIALIZED_NAME_PRICE)
  private Double price;

  public static final String SERIALIZED_NAME_STOP = "stop";
  @SerializedName(SERIALIZED_NAME_STOP)
  private Double stop;

  public static final String SERIALIZED_NAME_TIME_IN_FORCE = "time_in_force";
  @SerializedName(SERIALIZED_NAME_TIME_IN_FORCE)
  private TimeInForce timeInForce;

  public static final String SERIALIZED_NAME_UNITS = "units";
  @SerializedName(SERIALIZED_NAME_UNITS)
  private Double units;

  public static final String SERIALIZED_NAME_UNIVERSAL_SYMBOL_ID = "universal_symbol_id";
  @SerializedName(SERIALIZED_NAME_UNIVERSAL_SYMBOL_ID)
  private UUID universalSymbolId;

  public ManualTradeForm() {
  }

  public ManualTradeForm accountId(UUID accountId) {

    
    
    
    
    this.accountId = accountId;
    return this;
  }

   /**
   * Get accountId
   * @return accountId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "2bcd7cc3-e922-4976-bce1-9858296801c3", value = "")

  public UUID getAccountId() {
    return accountId;
  }


  public void setAccountId(UUID accountId) {

    
    
    
    this.accountId = accountId;
  }


  public ManualTradeForm action(Action action) {

    
    
    
    
    this.action = action;
    return this;
  }

   /**
   * Get action
   * @return action
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Action getAction() {
    return action;
  }


  public void setAction(Action action) {

    
    
    
    this.action = action;
  }


  public ManualTradeForm orderType(OrderType orderType) {

    
    
    
    
    this.orderType = orderType;
    return this;
  }

   /**
   * Get orderType
   * @return orderType
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public OrderType getOrderType() {
    return orderType;
  }


  public void setOrderType(OrderType orderType) {

    
    
    
    this.orderType = orderType;
  }


  public ManualTradeForm price(Double price) {

    
    
    
    
    this.price = price;
    return this;
  }

  public ManualTradeForm price(Integer price) {

    
    
    
    
    this.price = price.doubleValue();
    return this;
  }

   /**
   * Trade Price if limit or stop limit order
   * @return price
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "31.33", value = "Trade Price if limit or stop limit order")

  public Double getPrice() {
    return price;
  }


  public void setPrice(Double price) {

    
    
    
    this.price = price;
  }


  public ManualTradeForm stop(Double stop) {

    
    
    
    
    this.stop = stop;
    return this;
  }

  public ManualTradeForm stop(Integer stop) {

    
    
    
    
    this.stop = stop.doubleValue();
    return this;
  }

   /**
   * Stop Price. If stop loss or stop limit order, the price to trigger the stop
   * @return stop
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "31.33", value = "Stop Price. If stop loss or stop limit order, the price to trigger the stop")

  public Double getStop() {
    return stop;
  }


  public void setStop(Double stop) {

    
    
    
    this.stop = stop;
  }


  public ManualTradeForm timeInForce(TimeInForce timeInForce) {

    
    
    
    
    this.timeInForce = timeInForce;
    return this;
  }

   /**
   * Get timeInForce
   * @return timeInForce
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public TimeInForce getTimeInForce() {
    return timeInForce;
  }


  public void setTimeInForce(TimeInForce timeInForce) {

    
    
    
    this.timeInForce = timeInForce;
  }


  public ManualTradeForm units(Double units) {

    
    
    
    
    this.units = units;
    return this;
  }

  public ManualTradeForm units(Integer units) {

    
    
    
    
    this.units = units.doubleValue();
    return this;
  }

   /**
   * Trade Units
   * @return units
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Trade Units")

  public Double getUnits() {
    return units;
  }


  public void setUnits(Double units) {

    
    
    
    this.units = units;
  }


  public ManualTradeForm universalSymbolId(UUID universalSymbolId) {

    
    
    
    
    this.universalSymbolId = universalSymbolId;
    return this;
  }

   /**
   * Get universalSymbolId
   * @return universalSymbolId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "2bcd7cc3-e922-4976-bce1-9858296801c3", value = "")

  public UUID getUniversalSymbolId() {
    return universalSymbolId;
  }


  public void setUniversalSymbolId(UUID universalSymbolId) {

    
    
    
    this.universalSymbolId = universalSymbolId;
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
   * @return the ManualTradeForm instance itself
   */
  public ManualTradeForm putAdditionalProperty(String key, Object value) {
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
    ManualTradeForm manualTradeForm = (ManualTradeForm) o;
    return Objects.equals(this.accountId, manualTradeForm.accountId) &&
        Objects.equals(this.action, manualTradeForm.action) &&
        Objects.equals(this.orderType, manualTradeForm.orderType) &&
        Objects.equals(this.price, manualTradeForm.price) &&
        Objects.equals(this.stop, manualTradeForm.stop) &&
        Objects.equals(this.timeInForce, manualTradeForm.timeInForce) &&
        Objects.equals(this.units, manualTradeForm.units) &&
        Objects.equals(this.universalSymbolId, manualTradeForm.universalSymbolId)&&
        Objects.equals(this.additionalProperties, manualTradeForm.additionalProperties);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(accountId, action, orderType, price, stop, timeInForce, units, universalSymbolId, additionalProperties);
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
    sb.append("class ManualTradeForm {\n");
    sb.append("    accountId: ").append(toIndentedString(accountId)).append("\n");
    sb.append("    action: ").append(toIndentedString(action)).append("\n");
    sb.append("    orderType: ").append(toIndentedString(orderType)).append("\n");
    sb.append("    price: ").append(toIndentedString(price)).append("\n");
    sb.append("    stop: ").append(toIndentedString(stop)).append("\n");
    sb.append("    timeInForce: ").append(toIndentedString(timeInForce)).append("\n");
    sb.append("    units: ").append(toIndentedString(units)).append("\n");
    sb.append("    universalSymbolId: ").append(toIndentedString(universalSymbolId)).append("\n");
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
    openapiFields.add("account_id");
    openapiFields.add("action");
    openapiFields.add("order_type");
    openapiFields.add("price");
    openapiFields.add("stop");
    openapiFields.add("time_in_force");
    openapiFields.add("units");
    openapiFields.add("universal_symbol_id");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to ManualTradeForm
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!ManualTradeForm.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ManualTradeForm is not found in the empty JSON string", ManualTradeForm.openapiRequiredFields.toString()));
        }
      }
      if ((jsonObj.get("account_id") != null && !jsonObj.get("account_id").isJsonNull()) && !jsonObj.get("account_id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `account_id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("account_id").toString()));
      }
      if ((jsonObj.get("universal_symbol_id") != null && !jsonObj.get("universal_symbol_id").isJsonNull()) && !jsonObj.get("universal_symbol_id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `universal_symbol_id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("universal_symbol_id").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ManualTradeForm.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ManualTradeForm' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ManualTradeForm> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ManualTradeForm.class));

       return (TypeAdapter<T>) new TypeAdapter<ManualTradeForm>() {
           @Override
           public void write(JsonWriter out, ManualTradeForm value) throws IOException {
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
           public ManualTradeForm read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             // store additional fields in the deserialized instance
             ManualTradeForm instance = thisAdapter.fromJsonTree(jsonObj);
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
  * Create an instance of ManualTradeForm given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of ManualTradeForm
  * @throws IOException if the JSON string is invalid with respect to ManualTradeForm
  */
  public static ManualTradeForm fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ManualTradeForm.class);
  }

 /**
  * Convert an instance of ManualTradeForm to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

