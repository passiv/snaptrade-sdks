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
import com.konfigthis.client.model.Account;
import com.konfigthis.client.model.Currency;
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
 * Impact of a group of trade
 */
@ApiModel(description = "Impact of a group of trade")
@javax.annotation.Generated(value = "Generated by https://konfigthis.com")
public class TradeImpact {
  public static final String SERIALIZED_NAME_ACCOUNT = "account";
  @SerializedName(SERIALIZED_NAME_ACCOUNT)
  private Account account;

  public static final String SERIALIZED_NAME_CURRENCY = "currency";
  @SerializedName(SERIALIZED_NAME_CURRENCY)
  private Currency currency;

  public static final String SERIALIZED_NAME_REMAINING_CASH = "remaining_cash";
  @SerializedName(SERIALIZED_NAME_REMAINING_CASH)
  private BigDecimal remainingCash;

  public static final String SERIALIZED_NAME_ESTIMATED_COMMISSIONS = "estimated_commissions";
  @SerializedName(SERIALIZED_NAME_ESTIMATED_COMMISSIONS)
  private BigDecimal estimatedCommissions;

  public static final String SERIALIZED_NAME_FOREX_FEES = "forex_fees";
  @SerializedName(SERIALIZED_NAME_FOREX_FEES)
  private BigDecimal forexFees;

  public TradeImpact() {
  }

  public TradeImpact account(Account account) {
    
    this.account = account;
    return this;
  }

   /**
   * Get account
   * @return account
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Account getAccount() {
    return account;
  }


  public void setAccount(Account account) {
    this.account = account;
  }


  public TradeImpact currency(Currency currency) {
    
    this.currency = currency;
    return this;
  }

   /**
   * Get currency
   * @return currency
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Currency getCurrency() {
    return currency;
  }


  public void setCurrency(Currency currency) {
    this.currency = currency;
  }


  public TradeImpact remainingCash(BigDecimal remainingCash) {
    
    this.remainingCash = remainingCash;
    return this;
  }

   /**
   * Remaining balance after executing all trades
   * @return remainingCash
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "1.01", value = "Remaining balance after executing all trades")

  public BigDecimal getRemainingCash() {
    return remainingCash;
  }


  public void setRemainingCash(BigDecimal remainingCash) {
    this.remainingCash = remainingCash;
  }


  public TradeImpact estimatedCommissions(BigDecimal estimatedCommissions) {
    
    this.estimatedCommissions = estimatedCommissions;
    return this;
  }

   /**
   * Total estimated commissions across all trades to make
   * @return estimatedCommissions
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "10.05", value = "Total estimated commissions across all trades to make")

  public BigDecimal getEstimatedCommissions() {
    return estimatedCommissions;
  }


  public void setEstimatedCommissions(BigDecimal estimatedCommissions) {
    this.estimatedCommissions = estimatedCommissions;
  }


  public TradeImpact forexFees(BigDecimal forexFees) {
    
    this.forexFees = forexFees;
    return this;
  }

   /**
   * Estimated forex fees to pay to excute trades
   * @return forexFees
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "2.01", value = "Estimated forex fees to pay to excute trades")

  public BigDecimal getForexFees() {
    return forexFees;
  }


  public void setForexFees(BigDecimal forexFees) {
    this.forexFees = forexFees;
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
   * @return the TradeImpact instance itself
   */
  public TradeImpact putAdditionalProperty(String key, Object value) {
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
    TradeImpact tradeImpact = (TradeImpact) o;
    return Objects.equals(this.account, tradeImpact.account) &&
        Objects.equals(this.currency, tradeImpact.currency) &&
        Objects.equals(this.remainingCash, tradeImpact.remainingCash) &&
        Objects.equals(this.estimatedCommissions, tradeImpact.estimatedCommissions) &&
        Objects.equals(this.forexFees, tradeImpact.forexFees)&&
        Objects.equals(this.additionalProperties, tradeImpact.additionalProperties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(account, currency, remainingCash, estimatedCommissions, forexFees, additionalProperties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class TradeImpact {\n");
    sb.append("    account: ").append(toIndentedString(account)).append("\n");
    sb.append("    currency: ").append(toIndentedString(currency)).append("\n");
    sb.append("    remainingCash: ").append(toIndentedString(remainingCash)).append("\n");
    sb.append("    estimatedCommissions: ").append(toIndentedString(estimatedCommissions)).append("\n");
    sb.append("    forexFees: ").append(toIndentedString(forexFees)).append("\n");
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
    openapiFields.add("account");
    openapiFields.add("currency");
    openapiFields.add("remaining_cash");
    openapiFields.add("estimated_commissions");
    openapiFields.add("forex_fees");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to TradeImpact
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!TradeImpact.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in TradeImpact is not found in the empty JSON string", TradeImpact.openapiRequiredFields.toString()));
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!TradeImpact.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'TradeImpact' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<TradeImpact> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(TradeImpact.class));

       return (TypeAdapter<T>) new TypeAdapter<TradeImpact>() {
           @Override
           public void write(JsonWriter out, TradeImpact value) throws IOException {
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
           public TradeImpact read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             // store additional fields in the deserialized instance
             TradeImpact instance = thisAdapter.fromJsonTree(jsonObj);
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
  * Create an instance of TradeImpact given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of TradeImpact
  * @throws IOException if the JSON string is invalid with respect to TradeImpact
  */
  public static TradeImpact fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, TradeImpact.class);
  }

 /**
  * Convert an instance of TradeImpact to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

