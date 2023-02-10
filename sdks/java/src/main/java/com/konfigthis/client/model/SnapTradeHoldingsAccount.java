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
import com.konfigthis.client.model.BrokerageAuthorization;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
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

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import com.konfigthis.client.JSON;

/**
 * SnapTradeUser Investment Account
 */
@ApiModel(description = "SnapTradeUser Investment Account")
@javax.annotation.Generated(value = "Generated by https://konfigthis.com")
public class SnapTradeHoldingsAccount {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private UUID id;

  public static final String SERIALIZED_NAME_BROKERAGE_AUTHORIZATION = "brokerage_authorization";
  @SerializedName(SERIALIZED_NAME_BROKERAGE_AUTHORIZATION)
  private BrokerageAuthorization brokerageAuthorization;

  public static final String SERIALIZED_NAME_PORTFOLIO_GROUP = "portfolio_group";
  @SerializedName(SERIALIZED_NAME_PORTFOLIO_GROUP)
  private UUID portfolioGroup;

  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_NUMBER = "number";
  @SerializedName(SERIALIZED_NAME_NUMBER)
  private String number;

  public static final String SERIALIZED_NAME_INSTITUTION_NAME = "institution_name";
  @SerializedName(SERIALIZED_NAME_INSTITUTION_NAME)
  private String institutionName;

  public static final String SERIALIZED_NAME_META = "meta";
  @SerializedName(SERIALIZED_NAME_META)
  private Map<String, Object> meta = null;

  public SnapTradeHoldingsAccount() {
  }

  public SnapTradeHoldingsAccount id(UUID id) {
    
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "2bcd7cc3-e922-4976-bce1-9858296801c3", value = "")

  public UUID getId() {
    return id;
  }


  public void setId(UUID id) {
    this.id = id;
  }


  public SnapTradeHoldingsAccount brokerageAuthorization(BrokerageAuthorization brokerageAuthorization) {
    
    this.brokerageAuthorization = brokerageAuthorization;
    return this;
  }

   /**
   * Get brokerageAuthorization
   * @return brokerageAuthorization
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public BrokerageAuthorization getBrokerageAuthorization() {
    return brokerageAuthorization;
  }


  public void setBrokerageAuthorization(BrokerageAuthorization brokerageAuthorization) {
    this.brokerageAuthorization = brokerageAuthorization;
  }


  public SnapTradeHoldingsAccount portfolioGroup(UUID portfolioGroup) {
    
    this.portfolioGroup = portfolioGroup;
    return this;
  }

   /**
   * Get portfolioGroup
   * @return portfolioGroup
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "2bcd7cc3-e922-4976-bce1-9858296801c3", value = "")

  public UUID getPortfolioGroup() {
    return portfolioGroup;
  }


  public void setPortfolioGroup(UUID portfolioGroup) {
    this.portfolioGroup = portfolioGroup;
  }


  public SnapTradeHoldingsAccount name(String name) {
    
    this.name = name;
    return this;
  }

   /**
   * Get name
   * @return name
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "Registered Retirement Savings Account", value = "")

  public String getName() {
    return name;
  }


  public void setName(String name) {
    this.name = name;
  }


  public SnapTradeHoldingsAccount number(String number) {
    
    this.number = number;
    return this;
  }

   /**
   * Get number
   * @return number
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "Q6542138443", value = "")

  public String getNumber() {
    return number;
  }


  public void setNumber(String number) {
    this.number = number;
  }


  public SnapTradeHoldingsAccount institutionName(String institutionName) {
    
    this.institutionName = institutionName;
    return this;
  }

   /**
   * Get institutionName
   * @return institutionName
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "Alpaca", value = "")

  public String getInstitutionName() {
    return institutionName;
  }


  public void setInstitutionName(String institutionName) {
    this.institutionName = institutionName;
  }


  public SnapTradeHoldingsAccount meta(Map<String, Object> meta) {
    
    this.meta = meta;
    return this;
  }

  public SnapTradeHoldingsAccount putMetaItem(String key, Object metaItem) {
    if (this.meta == null) {
      this.meta = new HashMap<>();
    }
    this.meta.put(key, metaItem);
    return this;
  }

   /**
   * Get meta
   * @return meta
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "{\"type\":\"Margin\",\"status\":\"ACTIVE\",\"institution_name\":\"Alpaca\"}", value = "")

  public Map<String, Object> getMeta() {
    return meta;
  }


  public void setMeta(Map<String, Object> meta) {
    this.meta = meta;
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
   * @return the SnapTradeHoldingsAccount instance itself
   */
  public SnapTradeHoldingsAccount putAdditionalProperty(String key, Object value) {
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
    SnapTradeHoldingsAccount snapTradeHoldingsAccount = (SnapTradeHoldingsAccount) o;
    return Objects.equals(this.id, snapTradeHoldingsAccount.id) &&
        Objects.equals(this.brokerageAuthorization, snapTradeHoldingsAccount.brokerageAuthorization) &&
        Objects.equals(this.portfolioGroup, snapTradeHoldingsAccount.portfolioGroup) &&
        Objects.equals(this.name, snapTradeHoldingsAccount.name) &&
        Objects.equals(this.number, snapTradeHoldingsAccount.number) &&
        Objects.equals(this.institutionName, snapTradeHoldingsAccount.institutionName) &&
        Objects.equals(this.meta, snapTradeHoldingsAccount.meta)&&
        Objects.equals(this.additionalProperties, snapTradeHoldingsAccount.additionalProperties);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, brokerageAuthorization, portfolioGroup, name, number, institutionName, meta, additionalProperties);
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
    sb.append("class SnapTradeHoldingsAccount {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    brokerageAuthorization: ").append(toIndentedString(brokerageAuthorization)).append("\n");
    sb.append("    portfolioGroup: ").append(toIndentedString(portfolioGroup)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    number: ").append(toIndentedString(number)).append("\n");
    sb.append("    institutionName: ").append(toIndentedString(institutionName)).append("\n");
    sb.append("    meta: ").append(toIndentedString(meta)).append("\n");
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
    openapiFields.add("id");
    openapiFields.add("brokerage_authorization");
    openapiFields.add("portfolio_group");
    openapiFields.add("name");
    openapiFields.add("number");
    openapiFields.add("institution_name");
    openapiFields.add("meta");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to SnapTradeHoldingsAccount
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!SnapTradeHoldingsAccount.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in SnapTradeHoldingsAccount is not found in the empty JSON string", SnapTradeHoldingsAccount.openapiRequiredFields.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("portfolio_group") != null && !jsonObj.get("portfolio_group").isJsonNull()) && !jsonObj.get("portfolio_group").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `portfolio_group` to be a primitive type in the JSON string but got `%s`", jsonObj.get("portfolio_group").toString()));
      }
      if (!jsonObj.get("name").isJsonNull() && (jsonObj.get("name") != null && !jsonObj.get("name").isJsonNull()) && !jsonObj.get("name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("name").toString()));
      }
      if ((jsonObj.get("number") != null && !jsonObj.get("number").isJsonNull()) && !jsonObj.get("number").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `number` to be a primitive type in the JSON string but got `%s`", jsonObj.get("number").toString()));
      }
      if ((jsonObj.get("institution_name") != null && !jsonObj.get("institution_name").isJsonNull()) && !jsonObj.get("institution_name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `institution_name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("institution_name").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SnapTradeHoldingsAccount.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SnapTradeHoldingsAccount' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SnapTradeHoldingsAccount> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SnapTradeHoldingsAccount.class));

       return (TypeAdapter<T>) new TypeAdapter<SnapTradeHoldingsAccount>() {
           @Override
           public void write(JsonWriter out, SnapTradeHoldingsAccount value) throws IOException {
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
           public SnapTradeHoldingsAccount read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             // store additional fields in the deserialized instance
             SnapTradeHoldingsAccount instance = thisAdapter.fromJsonTree(jsonObj);
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
  * Create an instance of SnapTradeHoldingsAccount given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of SnapTradeHoldingsAccount
  * @throws IOException if the JSON string is invalid with respect to SnapTradeHoldingsAccount
  */
  public static SnapTradeHoldingsAccount fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SnapTradeHoldingsAccount.class);
  }

 /**
  * Convert an instance of SnapTradeHoldingsAccount to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

