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
import java.util.UUID;

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
 * The type of security. For example, \&quot;Common Stock\&quot; or \&quot;ETF\&quot;.
 */
@ApiModel(description = "The type of security. For example, \"Common Stock\" or \"ETF\".")@javax.annotation.Generated(value = "Generated by https://konfigthis.com")
public class UnderlyingSymbolType {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private UUID id;

  public static final String SERIALIZED_NAME_CODE = "code";
  @SerializedName(SERIALIZED_NAME_CODE)
  private String code;

  public static final String SERIALIZED_NAME_DESCRIPTION = "description";
  @SerializedName(SERIALIZED_NAME_DESCRIPTION)
  private String description;

  public static final String SERIALIZED_NAME_IS_SUPPORTED = "is_supported";
  @SerializedName(SERIALIZED_NAME_IS_SUPPORTED)
  private Boolean isSupported;

  public UnderlyingSymbolType() {
  }

  public UnderlyingSymbolType id(UUID id) {
    
    
    
    
    this.id = id;
    return this;
  }

   /**
   * Unique identifier for the security type within SnapTrade. This is the ID used to reference the security type in SnapTrade API calls.
   * @return id
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "2bcd7cc3-e922-4976-bce1-9858296801c3", value = "Unique identifier for the security type within SnapTrade. This is the ID used to reference the security type in SnapTrade API calls.")

  public UUID getId() {
    return id;
  }


  public void setId(UUID id) {
    
    
    
    this.id = id;
  }


  public UnderlyingSymbolType code(String code) {
    
    
    
    
    this.code = code;
    return this;
  }

   /**
   * A short code representing the security type. For example, \&quot;cs\&quot; for Common Stock. Here are some common values:   - &#x60;ad&#x60; - ADR   - &#x60;bnd&#x60; - Bond   - &#x60;cs&#x60; - Common Stock   - &#x60;cef&#x60; - Closed End Fund   - &#x60;crypto&#x60; - Cryptocurrency   - &#x60;et&#x60; - ETF   - &#x60;oef&#x60; - Open Ended Fund   - &#x60;ps&#x60; - Preferred Stock   - &#x60;rt&#x60; - Right   - &#x60;struct&#x60; - Structured Product   - &#x60;ut&#x60; - Unit   - &#x60;wi&#x60; - When Issued   - &#x60;wt&#x60; - Warrant 
   * @return code
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "cs", value = "A short code representing the security type. For example, \"cs\" for Common Stock. Here are some common values:   - `ad` - ADR   - `bnd` - Bond   - `cs` - Common Stock   - `cef` - Closed End Fund   - `crypto` - Cryptocurrency   - `et` - ETF   - `oef` - Open Ended Fund   - `ps` - Preferred Stock   - `rt` - Right   - `struct` - Structured Product   - `ut` - Unit   - `wi` - When Issued   - `wt` - Warrant ")

  public String getCode() {
    return code;
  }


  public void setCode(String code) {
    
    
    
    this.code = code;
  }


  public UnderlyingSymbolType description(String description) {
    
    
    
    
    this.description = description;
    return this;
  }

   /**
   * A human-readable description of the security type. For example, \&quot;Common Stock\&quot; or \&quot;ETF\&quot;.
   * @return description
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "Common Stock", value = "A human-readable description of the security type. For example, \"Common Stock\" or \"ETF\".")

  public String getDescription() {
    return description;
  }


  public void setDescription(String description) {
    
    
    
    this.description = description;
  }


  public UnderlyingSymbolType isSupported(Boolean isSupported) {
    
    
    
    
    this.isSupported = isSupported;
    return this;
  }

   /**
   * This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this.
   * @return isSupported
   * @deprecated
  **/
  @Deprecated
  @javax.annotation.Nullable
  @ApiModelProperty(example = "true", value = "This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this.")

  public Boolean getIsSupported() {
    return isSupported;
  }


  public void setIsSupported(Boolean isSupported) {
    
    
    
    this.isSupported = isSupported;
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
   * @return the UnderlyingSymbolType instance itself
   */
  public UnderlyingSymbolType putAdditionalProperty(String key, Object value) {
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
    UnderlyingSymbolType underlyingSymbolType = (UnderlyingSymbolType) o;
    return Objects.equals(this.id, underlyingSymbolType.id) &&
        Objects.equals(this.code, underlyingSymbolType.code) &&
        Objects.equals(this.description, underlyingSymbolType.description) &&
        Objects.equals(this.isSupported, underlyingSymbolType.isSupported)&&
        Objects.equals(this.additionalProperties, underlyingSymbolType.additionalProperties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, code, description, isSupported, additionalProperties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class UnderlyingSymbolType {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    code: ").append(toIndentedString(code)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    isSupported: ").append(toIndentedString(isSupported)).append("\n");
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
    openapiFields.add("code");
    openapiFields.add("description");
    openapiFields.add("is_supported");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to UnderlyingSymbolType
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!UnderlyingSymbolType.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in UnderlyingSymbolType is not found in the empty JSON string", UnderlyingSymbolType.openapiRequiredFields.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("code") != null && !jsonObj.get("code").isJsonNull()) && !jsonObj.get("code").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `code` to be a primitive type in the JSON string but got `%s`", jsonObj.get("code").toString()));
      }
      if ((jsonObj.get("description") != null && !jsonObj.get("description").isJsonNull()) && !jsonObj.get("description").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `description` to be a primitive type in the JSON string but got `%s`", jsonObj.get("description").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!UnderlyingSymbolType.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'UnderlyingSymbolType' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<UnderlyingSymbolType> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(UnderlyingSymbolType.class));

       return (TypeAdapter<T>) new TypeAdapter<UnderlyingSymbolType>() {
           @Override
           public void write(JsonWriter out, UnderlyingSymbolType value) throws IOException {
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
           public UnderlyingSymbolType read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             // store additional fields in the deserialized instance
             UnderlyingSymbolType instance = thisAdapter.fromJsonTree(jsonObj);
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
  * Create an instance of UnderlyingSymbolType given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of UnderlyingSymbolType
  * @throws IOException if the JSON string is invalid with respect to UnderlyingSymbolType
  */
  public static UnderlyingSymbolType fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, UnderlyingSymbolType.class);
  }

 /**
  * Convert an instance of UnderlyingSymbolType to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

