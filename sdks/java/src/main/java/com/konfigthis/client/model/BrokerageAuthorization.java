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
import com.konfigthis.client.model.Brokerage;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.time.OffsetDateTime;
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
 * A single connection with a brokerage. Note that &#x60;Connection&#x60; and &#x60;Brokerage Authorization&#x60; are interchangeable, but the term &#x60;Connection&#x60; is preferred and used in the doc for consistency.  A connection is usually tied to a single login at a brokerage. A single connection can contain multiple brokerage accounts.  SnapTrade performs de-duping on connections for a given user. If the user has an existing connection with the brokerage, when connecting the brokerage with the same credentials, SnapTrade will return the existing connection instead of creating a new one. 
 */
@ApiModel(description = "A single connection with a brokerage. Note that `Connection` and `Brokerage Authorization` are interchangeable, but the term `Connection` is preferred and used in the doc for consistency.  A connection is usually tied to a single login at a brokerage. A single connection can contain multiple brokerage accounts.  SnapTrade performs de-duping on connections for a given user. If the user has an existing connection with the brokerage, when connecting the brokerage with the same credentials, SnapTrade will return the existing connection instead of creating a new one. ")@javax.annotation.Generated(value = "Generated by https://konfigthis.com")
public class BrokerageAuthorization {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private UUID id;

  public static final String SERIALIZED_NAME_CREATED_DATE = "created_date";
  @SerializedName(SERIALIZED_NAME_CREATED_DATE)
  private OffsetDateTime createdDate;

  public static final String SERIALIZED_NAME_BROKERAGE = "brokerage";
  @SerializedName(SERIALIZED_NAME_BROKERAGE)
  private Brokerage brokerage;

  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_TYPE = "type";
  @SerializedName(SERIALIZED_NAME_TYPE)
  private String type;

  public static final String SERIALIZED_NAME_DISABLED = "disabled";
  @SerializedName(SERIALIZED_NAME_DISABLED)
  private Boolean disabled;

  public static final String SERIALIZED_NAME_DISABLED_DATE = "disabled_date";
  @SerializedName(SERIALIZED_NAME_DISABLED_DATE)
  private OffsetDateTime disabledDate;

  public static final String SERIALIZED_NAME_META = "meta";
  @SerializedName(SERIALIZED_NAME_META)
  private Map<String, Object> meta = null;

  public static final String SERIALIZED_NAME_UPDATED_DATE = "updated_date";
  @SerializedName(SERIALIZED_NAME_UPDATED_DATE)
  private OffsetDateTime updatedDate;

  public static final String SERIALIZED_NAME_IS_ELIGIBLE_FOR_PAYOUT = "is_eligible_for_payout";
  @SerializedName(SERIALIZED_NAME_IS_ELIGIBLE_FOR_PAYOUT)
  private Boolean isEligibleForPayout;

  public BrokerageAuthorization() {
  }

  public BrokerageAuthorization id(UUID id) {
    
    
    
    
    this.id = id;
    return this;
  }

   /**
   * Unique identifier for the connection. This is the UUID used to reference the connection in SnapTrade.
   * @return id
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "87b24961-b51e-4db8-9226-f198f6518a89", value = "Unique identifier for the connection. This is the UUID used to reference the connection in SnapTrade.")

  public UUID getId() {
    return id;
  }


  public void setId(UUID id) {
    
    
    
    this.id = id;
  }


  public BrokerageAuthorization createdDate(OffsetDateTime createdDate) {
    
    
    
    
    this.createdDate = createdDate;
    return this;
  }

   /**
   * Timestamp of when the connection was established in SnapTrade.
   * @return createdDate
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "2024-08-20T21:56:19.123Z", value = "Timestamp of when the connection was established in SnapTrade.")

  public OffsetDateTime getCreatedDate() {
    return createdDate;
  }


  public void setCreatedDate(OffsetDateTime createdDate) {
    
    
    
    this.createdDate = createdDate;
  }


  public BrokerageAuthorization brokerage(Brokerage brokerage) {
    
    
    
    
    this.brokerage = brokerage;
    return this;
  }

   /**
   * Get brokerage
   * @return brokerage
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Brokerage getBrokerage() {
    return brokerage;
  }


  public void setBrokerage(Brokerage brokerage) {
    
    
    
    this.brokerage = brokerage;
  }


  public BrokerageAuthorization name(String name) {
    
    
    
    
    this.name = name;
    return this;
  }

   /**
   * A short, human-readable name for the connection.
   * @return name
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "Connection-1", value = "A short, human-readable name for the connection.")

  public String getName() {
    return name;
  }


  public void setName(String name) {
    
    
    
    this.name = name;
  }


  public BrokerageAuthorization type(String type) {
    
    
    
    
    this.type = type;
    return this;
  }

   /**
   * Whether the connection is read-only or trade-enabled. A read-only connection can only be used to fetch data, while a trade-enabled connection can be used to place trades. Valid values are &#x60;read&#x60; and &#x60;trade&#x60;.
   * @return type
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "trade", value = "Whether the connection is read-only or trade-enabled. A read-only connection can only be used to fetch data, while a trade-enabled connection can be used to place trades. Valid values are `read` and `trade`.")

  public String getType() {
    return type;
  }


  public void setType(String type) {
    
    
    
    this.type = type;
  }


  public BrokerageAuthorization disabled(Boolean disabled) {
    
    
    
    
    this.disabled = disabled;
    return this;
  }

   /**
   * Whether the connection is disabled. A disabled connection can no longer access the latest data from the brokerage, but will continue to return the last cached state. A connection can become disabled for many reasons and differs by brokerage. Here are some common scenarios:  - The user has changed their username or password at the brokerage. - The user has explicitly removed the access grant at the brokerage. - The session has expired at the brokerage and now requires explicit user re-authentication.  Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection. 
   * @return disabled
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "false", value = "Whether the connection is disabled. A disabled connection can no longer access the latest data from the brokerage, but will continue to return the last cached state. A connection can become disabled for many reasons and differs by brokerage. Here are some common scenarios:  - The user has changed their username or password at the brokerage. - The user has explicitly removed the access grant at the brokerage. - The session has expired at the brokerage and now requires explicit user re-authentication.  Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection. ")

  public Boolean getDisabled() {
    return disabled;
  }


  public void setDisabled(Boolean disabled) {
    
    
    
    this.disabled = disabled;
  }


  public BrokerageAuthorization disabledDate(OffsetDateTime disabledDate) {
    
    
    
    
    this.disabledDate = disabledDate;
    return this;
  }

   /**
   * Timestamp of when the connection was disabled in SnapTrade.
   * @return disabledDate
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "2022-01-21T20:11:19.217Z", value = "Timestamp of when the connection was disabled in SnapTrade.")

  public OffsetDateTime getDisabledDate() {
    return disabledDate;
  }


  public void setDisabledDate(OffsetDateTime disabledDate) {
    
    
    
    this.disabledDate = disabledDate;
  }


  public BrokerageAuthorization meta(Map<String, Object> meta) {
    
    
    
    
    this.meta = meta;
    return this;
  }

  public BrokerageAuthorization putMetaItem(String key, Object metaItem) {
    if (this.meta == null) {
      this.meta = new HashMap<>();
    }
    this.meta.put(key, metaItem);
    return this;
  }

   /**
   * Additional data about the connection. This information is specific to the brokerage and there&#39;s no standard format for this data. This field is deprecated and subject to removal in a future version.
   * @return meta
   * @deprecated
  **/
  @Deprecated
  @javax.annotation.Nullable
  @ApiModelProperty(example = "{\"identifier\":123456}", value = "Additional data about the connection. This information is specific to the brokerage and there's no standard format for this data. This field is deprecated and subject to removal in a future version.")

  public Map<String, Object> getMeta() {
    return meta;
  }


  public void setMeta(Map<String, Object> meta) {
    
    
    
    this.meta = meta;
  }


  public BrokerageAuthorization updatedDate(OffsetDateTime updatedDate) {
    
    
    
    
    this.updatedDate = updatedDate;
    return this;
  }

   /**
   * Timestamp of when the connection was last updated in SnapTrade. This field is deprecated. Please let us know if you have a valid use case for this field.
   * @return updatedDate
   * @deprecated
  **/
  @Deprecated
  @javax.annotation.Nullable
  @ApiModelProperty(example = "2024-08-20T21:56:20.057Z", value = "Timestamp of when the connection was last updated in SnapTrade. This field is deprecated. Please let us know if you have a valid use case for this field.")

  public OffsetDateTime getUpdatedDate() {
    return updatedDate;
  }


  public void setUpdatedDate(OffsetDateTime updatedDate) {
    
    
    
    this.updatedDate = updatedDate;
  }


  public BrokerageAuthorization isEligibleForPayout(Boolean isEligibleForPayout) {
    
    
    
    
    this.isEligibleForPayout = isEligibleForPayout;
    return this;
  }

   /**
   * Whether the connection is eligible for a payout.
   * @return isEligibleForPayout
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "true", value = "Whether the connection is eligible for a payout.")

  public Boolean getIsEligibleForPayout() {
    return isEligibleForPayout;
  }


  public void setIsEligibleForPayout(Boolean isEligibleForPayout) {
    
    
    
    this.isEligibleForPayout = isEligibleForPayout;
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
   * @return the BrokerageAuthorization instance itself
   */
  public BrokerageAuthorization putAdditionalProperty(String key, Object value) {
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
    BrokerageAuthorization brokerageAuthorization = (BrokerageAuthorization) o;
    return Objects.equals(this.id, brokerageAuthorization.id) &&
        Objects.equals(this.createdDate, brokerageAuthorization.createdDate) &&
        Objects.equals(this.brokerage, brokerageAuthorization.brokerage) &&
        Objects.equals(this.name, brokerageAuthorization.name) &&
        Objects.equals(this.type, brokerageAuthorization.type) &&
        Objects.equals(this.disabled, brokerageAuthorization.disabled) &&
        Objects.equals(this.disabledDate, brokerageAuthorization.disabledDate) &&
        Objects.equals(this.meta, brokerageAuthorization.meta) &&
        Objects.equals(this.updatedDate, brokerageAuthorization.updatedDate) &&
        Objects.equals(this.isEligibleForPayout, brokerageAuthorization.isEligibleForPayout)&&
        Objects.equals(this.additionalProperties, brokerageAuthorization.additionalProperties);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, createdDate, brokerage, name, type, disabled, disabledDate, meta, updatedDate, isEligibleForPayout, additionalProperties);
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
    sb.append("class BrokerageAuthorization {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    createdDate: ").append(toIndentedString(createdDate)).append("\n");
    sb.append("    brokerage: ").append(toIndentedString(brokerage)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    disabled: ").append(toIndentedString(disabled)).append("\n");
    sb.append("    disabledDate: ").append(toIndentedString(disabledDate)).append("\n");
    sb.append("    meta: ").append(toIndentedString(meta)).append("\n");
    sb.append("    updatedDate: ").append(toIndentedString(updatedDate)).append("\n");
    sb.append("    isEligibleForPayout: ").append(toIndentedString(isEligibleForPayout)).append("\n");
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
    openapiFields.add("created_date");
    openapiFields.add("brokerage");
    openapiFields.add("name");
    openapiFields.add("type");
    openapiFields.add("disabled");
    openapiFields.add("disabled_date");
    openapiFields.add("meta");
    openapiFields.add("updated_date");
    openapiFields.add("is_eligible_for_payout");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to BrokerageAuthorization
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!BrokerageAuthorization.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in BrokerageAuthorization is not found in the empty JSON string", BrokerageAuthorization.openapiRequiredFields.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      // validate the optional field `brokerage`
      if (jsonObj.get("brokerage") != null && !jsonObj.get("brokerage").isJsonNull()) {
        Brokerage.validateJsonObject(jsonObj.getAsJsonObject("brokerage"));
      }
      if ((jsonObj.get("name") != null && !jsonObj.get("name").isJsonNull()) && !jsonObj.get("name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("name").toString()));
      }
      if ((jsonObj.get("type") != null && !jsonObj.get("type").isJsonNull()) && !jsonObj.get("type").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `type` to be a primitive type in the JSON string but got `%s`", jsonObj.get("type").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!BrokerageAuthorization.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'BrokerageAuthorization' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<BrokerageAuthorization> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(BrokerageAuthorization.class));

       return (TypeAdapter<T>) new TypeAdapter<BrokerageAuthorization>() {
           @Override
           public void write(JsonWriter out, BrokerageAuthorization value) throws IOException {
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
           public BrokerageAuthorization read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             // store additional fields in the deserialized instance
             BrokerageAuthorization instance = thisAdapter.fromJsonTree(jsonObj);
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
  * Create an instance of BrokerageAuthorization given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of BrokerageAuthorization
  * @throws IOException if the JSON string is invalid with respect to BrokerageAuthorization
  */
  public static BrokerageAuthorization fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, BrokerageAuthorization.class);
  }

 /**
  * Convert an instance of BrokerageAuthorization to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

