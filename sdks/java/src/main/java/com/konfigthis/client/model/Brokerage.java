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
import com.konfigthis.client.model.BrokerageType;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
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
 * Describes a brokerage that SnapTrade supports.
 */
@ApiModel(description = "Describes a brokerage that SnapTrade supports.")@javax.annotation.Generated(value = "Generated by https://konfigthis.com")
public class Brokerage {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private UUID id;

  public static final String SERIALIZED_NAME_SLUG = "slug";
  @SerializedName(SERIALIZED_NAME_SLUG)
  private String slug;

  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_DISPLAY_NAME = "display_name";
  @SerializedName(SERIALIZED_NAME_DISPLAY_NAME)
  private String displayName;

  public static final String SERIALIZED_NAME_DESCRIPTION = "description";
  @SerializedName(SERIALIZED_NAME_DESCRIPTION)
  private String description;

  public static final String SERIALIZED_NAME_AWS_S3_LOGO_URL = "aws_s3_logo_url";
  @SerializedName(SERIALIZED_NAME_AWS_S3_LOGO_URL)
  private String awsS3LogoUrl;

  public static final String SERIALIZED_NAME_AWS_S3_SQUARE_LOGO_URL = "aws_s3_square_logo_url";
  @SerializedName(SERIALIZED_NAME_AWS_S3_SQUARE_LOGO_URL)
  private String awsS3SquareLogoUrl;

  public static final String SERIALIZED_NAME_OPEN_URL = "open_url";
  @SerializedName(SERIALIZED_NAME_OPEN_URL)
  private String openUrl;

  public static final String SERIALIZED_NAME_URL = "url";
  @SerializedName(SERIALIZED_NAME_URL)
  private String url;

  public static final String SERIALIZED_NAME_ENABLED = "enabled";
  @SerializedName(SERIALIZED_NAME_ENABLED)
  private Boolean enabled;

  public static final String SERIALIZED_NAME_MAINTENANCE_MODE = "maintenance_mode";
  @SerializedName(SERIALIZED_NAME_MAINTENANCE_MODE)
  private Boolean maintenanceMode;

  public static final String SERIALIZED_NAME_ALLOWS_FRACTIONAL_UNITS = "allows_fractional_units";
  @SerializedName(SERIALIZED_NAME_ALLOWS_FRACTIONAL_UNITS)
  private Boolean allowsFractionalUnits;

  public static final String SERIALIZED_NAME_ALLOWS_TRADING = "allows_trading";
  @SerializedName(SERIALIZED_NAME_ALLOWS_TRADING)
  private Boolean allowsTrading;

  public static final String SERIALIZED_NAME_HAS_REPORTING = "has_reporting";
  @SerializedName(SERIALIZED_NAME_HAS_REPORTING)
  private Boolean hasReporting;

  public static final String SERIALIZED_NAME_IS_REAL_TIME_CONNECTION = "is_real_time_connection";
  @SerializedName(SERIALIZED_NAME_IS_REAL_TIME_CONNECTION)
  private Boolean isRealTimeConnection;

  public static final String SERIALIZED_NAME_BROKERAGE_TYPE = "brokerage_type";
  @SerializedName(SERIALIZED_NAME_BROKERAGE_TYPE)
  private BrokerageType brokerageType;

  public static final String SERIALIZED_NAME_EXCHANGES = "exchanges";
  @SerializedName(SERIALIZED_NAME_EXCHANGES)
  private List<Object> exchanges = null;

  public Brokerage() {
  }

  public Brokerage id(UUID id) {
    
    
    
    
    this.id = id;
    return this;
  }

   /**
   * Unique identifier for the brokerage firm. This is the UUID used to reference the brokerage in SnapTrade.
   * @return id
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "ebf91a5b-0920-4266-9e36-f6cfe8c40946", value = "Unique identifier for the brokerage firm. This is the UUID used to reference the brokerage in SnapTrade.")

  public UUID getId() {
    return id;
  }


  public void setId(UUID id) {
    
    
    
    this.id = id;
  }


  public Brokerage slug(String slug) {
    
    
    
    
    this.slug = slug;
    return this;
  }

   /**
   * A short, unique identifier for the brokerage. It is usually the name of the brokerage in capital letters and will never change.
   * @return slug
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "ROBINHOOD", value = "A short, unique identifier for the brokerage. It is usually the name of the brokerage in capital letters and will never change.")

  public String getSlug() {
    return slug;
  }


  public void setSlug(String slug) {
    
    
    
    this.slug = slug;
  }


  public Brokerage name(String name) {
    
    
    
    
    this.name = name;
    return this;
  }

   /**
   * Full name of the brokerage.
   * @return name
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "Robinhood", value = "Full name of the brokerage.")

  public String getName() {
    return name;
  }


  public void setName(String name) {
    
    
    
    this.name = name;
  }


  public Brokerage displayName(String displayName) {
    
    
    
    
    this.displayName = displayName;
    return this;
  }

   /**
   * A display-friendly name of the brokerage.
   * @return displayName
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "Robinhood", value = "A display-friendly name of the brokerage.")

  public String getDisplayName() {
    return displayName;
  }


  public void setDisplayName(String displayName) {
    
    
    
    this.displayName = displayName;
  }


  public Brokerage description(String description) {
    
    
    
    
    this.description = description;
    return this;
  }

   /**
   * A brief description of the brokerage.
   * @return description
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "Robinhood is an American multinational financial services corporation based in Menlo Park, California.", value = "A brief description of the brokerage.")

  public String getDescription() {
    return description;
  }


  public void setDescription(String description) {
    
    
    
    this.description = description;
  }


  public Brokerage awsS3LogoUrl(String awsS3LogoUrl) {
    
    
    
    
    this.awsS3LogoUrl = awsS3LogoUrl;
    return this;
  }

   /**
   * URL to the brokerage&#39;s logo.
   * @return awsS3LogoUrl
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "https://passiv-brokerage-logos.s3.ca-central-1.amazonaws.com/robinhood-logo.png", value = "URL to the brokerage's logo.")

  public String getAwsS3LogoUrl() {
    return awsS3LogoUrl;
  }


  public void setAwsS3LogoUrl(String awsS3LogoUrl) {
    
    
    
    this.awsS3LogoUrl = awsS3LogoUrl;
  }


  public Brokerage awsS3SquareLogoUrl(String awsS3SquareLogoUrl) {
    
    
    
    
    this.awsS3SquareLogoUrl = awsS3SquareLogoUrl;
    return this;
  }

   /**
   * URL to the brokerage&#39;s logo in square format.
   * @return awsS3SquareLogoUrl
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "https://passiv-brokerage-logos.s3.ca-central-1.amazonaws.com/robinhood-logo-square.png", value = "URL to the brokerage's logo in square format.")

  public String getAwsS3SquareLogoUrl() {
    return awsS3SquareLogoUrl;
  }


  public void setAwsS3SquareLogoUrl(String awsS3SquareLogoUrl) {
    
    
    
    this.awsS3SquareLogoUrl = awsS3SquareLogoUrl;
  }


  public Brokerage openUrl(String openUrl) {
    
    
    
    
    this.openUrl = openUrl;
    return this;
  }

   /**
   * This field is deprecated.
   * @return openUrl
   * @deprecated
  **/
  @Deprecated
  @javax.annotation.Nullable
  @ApiModelProperty(value = "This field is deprecated.")

  public String getOpenUrl() {
    return openUrl;
  }


  public void setOpenUrl(String openUrl) {
    
    
    
    this.openUrl = openUrl;
  }


  public Brokerage url(String url) {
    
    
    
    
    this.url = url;
    return this;
  }

   /**
   * URL to the brokerage&#39;s website.
   * @return url
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "https://robinhood.com", value = "URL to the brokerage's website.")

  public String getUrl() {
    return url;
  }


  public void setUrl(String url) {
    
    
    
    this.url = url;
  }


  public Brokerage enabled(Boolean enabled) {
    
    
    
    
    this.enabled = enabled;
    return this;
  }

   /**
   * Whether the brokerage is enabled in SnapTrade. A disabled brokerage will not be available for new connections.
   * @return enabled
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "true", value = "Whether the brokerage is enabled in SnapTrade. A disabled brokerage will not be available for new connections.")

  public Boolean getEnabled() {
    return enabled;
  }


  public void setEnabled(Boolean enabled) {
    
    
    
    this.enabled = enabled;
  }


  public Brokerage maintenanceMode(Boolean maintenanceMode) {
    
    
    
    
    this.maintenanceMode = maintenanceMode;
    return this;
  }

   /**
   * Whether the brokerage is currently in maintenance mode. A brokerage in maintenance mode will not be available for new connections.
   * @return maintenanceMode
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "true", value = "Whether the brokerage is currently in maintenance mode. A brokerage in maintenance mode will not be available for new connections.")

  public Boolean getMaintenanceMode() {
    return maintenanceMode;
  }


  public void setMaintenanceMode(Boolean maintenanceMode) {
    
    
    
    this.maintenanceMode = maintenanceMode;
  }


  public Brokerage allowsFractionalUnits(Boolean allowsFractionalUnits) {
    
    
    
    
    this.allowsFractionalUnits = allowsFractionalUnits;
    return this;
  }

   /**
   * This field is deprecated. Please contact us if you have a valid use case for it.
   * @return allowsFractionalUnits
   * @deprecated
  **/
  @Deprecated
  @javax.annotation.Nullable
  @ApiModelProperty(example = "true", value = "This field is deprecated. Please contact us if you have a valid use case for it.")

  public Boolean getAllowsFractionalUnits() {
    return allowsFractionalUnits;
  }


  public void setAllowsFractionalUnits(Boolean allowsFractionalUnits) {
    
    
    
    this.allowsFractionalUnits = allowsFractionalUnits;
  }


  public Brokerage allowsTrading(Boolean allowsTrading) {
    
    
    
    
    this.allowsTrading = allowsTrading;
    return this;
  }

   /**
   * Whether the brokerage allows trading through SnapTrade.
   * @return allowsTrading
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "true", value = "Whether the brokerage allows trading through SnapTrade.")

  public Boolean getAllowsTrading() {
    return allowsTrading;
  }


  public void setAllowsTrading(Boolean allowsTrading) {
    
    
    
    this.allowsTrading = allowsTrading;
  }


  public Brokerage hasReporting(Boolean hasReporting) {
    
    
    
    
    this.hasReporting = hasReporting;
    return this;
  }

   /**
   * This field is deprecated. Please contact us if you have a valid use case for it.
   * @return hasReporting
   * @deprecated
  **/
  @Deprecated
  @javax.annotation.Nullable
  @ApiModelProperty(example = "true", value = "This field is deprecated. Please contact us if you have a valid use case for it.")

  public Boolean getHasReporting() {
    return hasReporting;
  }


  public void setHasReporting(Boolean hasReporting) {
    
    
    
    this.hasReporting = hasReporting;
  }


  public Brokerage isRealTimeConnection(Boolean isRealTimeConnection) {
    
    
    
    
    this.isRealTimeConnection = isRealTimeConnection;
    return this;
  }

   /**
   * This field is deprecated. Please contact us if you have a valid use case for it.
   * @return isRealTimeConnection
   * @deprecated
  **/
  @Deprecated
  @javax.annotation.Nullable
  @ApiModelProperty(example = "true", value = "This field is deprecated. Please contact us if you have a valid use case for it.")

  public Boolean getIsRealTimeConnection() {
    return isRealTimeConnection;
  }


  public void setIsRealTimeConnection(Boolean isRealTimeConnection) {
    
    
    
    this.isRealTimeConnection = isRealTimeConnection;
  }


  public Brokerage brokerageType(BrokerageType brokerageType) {
    
    
    
    
    this.brokerageType = brokerageType;
    return this;
  }

   /**
   * Get brokerageType
   * @return brokerageType
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public BrokerageType getBrokerageType() {
    return brokerageType;
  }


  public void setBrokerageType(BrokerageType brokerageType) {
    
    
    
    this.brokerageType = brokerageType;
  }


  public Brokerage exchanges(List<Object> exchanges) {
    
    
    
    
    this.exchanges = exchanges;
    return this;
  }

  public Brokerage addExchangesItem(Object exchangesItem) {
    if (this.exchanges == null) {
      this.exchanges = new ArrayList<>();
    }
    this.exchanges.add(exchangesItem);
    return this;
  }

   /**
   * This field is deprecated. Please contact us if you have a valid use case for it.
   * @return exchanges
   * @deprecated
  **/
  @Deprecated
  @javax.annotation.Nullable
  @ApiModelProperty(example = "[\"2bcd7cc3-e922-4976-bce1-9858296801c3\",\"4bcd8cc3-c122-4974-dc21-1858296801f4\"]", value = "This field is deprecated. Please contact us if you have a valid use case for it.")

  public List<Object> getExchanges() {
    return exchanges;
  }


  public void setExchanges(List<Object> exchanges) {
    
    
    
    this.exchanges = exchanges;
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
   * @return the Brokerage instance itself
   */
  public Brokerage putAdditionalProperty(String key, Object value) {
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
    Brokerage brokerage = (Brokerage) o;
    return Objects.equals(this.id, brokerage.id) &&
        Objects.equals(this.slug, brokerage.slug) &&
        Objects.equals(this.name, brokerage.name) &&
        Objects.equals(this.displayName, brokerage.displayName) &&
        Objects.equals(this.description, brokerage.description) &&
        Objects.equals(this.awsS3LogoUrl, brokerage.awsS3LogoUrl) &&
        Objects.equals(this.awsS3SquareLogoUrl, brokerage.awsS3SquareLogoUrl) &&
        Objects.equals(this.openUrl, brokerage.openUrl) &&
        Objects.equals(this.url, brokerage.url) &&
        Objects.equals(this.enabled, brokerage.enabled) &&
        Objects.equals(this.maintenanceMode, brokerage.maintenanceMode) &&
        Objects.equals(this.allowsFractionalUnits, brokerage.allowsFractionalUnits) &&
        Objects.equals(this.allowsTrading, brokerage.allowsTrading) &&
        Objects.equals(this.hasReporting, brokerage.hasReporting) &&
        Objects.equals(this.isRealTimeConnection, brokerage.isRealTimeConnection) &&
        Objects.equals(this.brokerageType, brokerage.brokerageType) &&
        Objects.equals(this.exchanges, brokerage.exchanges)&&
        Objects.equals(this.additionalProperties, brokerage.additionalProperties);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, slug, name, displayName, description, awsS3LogoUrl, awsS3SquareLogoUrl, openUrl, url, enabled, maintenanceMode, allowsFractionalUnits, allowsTrading, hasReporting, isRealTimeConnection, brokerageType, exchanges, additionalProperties);
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
    sb.append("class Brokerage {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    slug: ").append(toIndentedString(slug)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    awsS3LogoUrl: ").append(toIndentedString(awsS3LogoUrl)).append("\n");
    sb.append("    awsS3SquareLogoUrl: ").append(toIndentedString(awsS3SquareLogoUrl)).append("\n");
    sb.append("    openUrl: ").append(toIndentedString(openUrl)).append("\n");
    sb.append("    url: ").append(toIndentedString(url)).append("\n");
    sb.append("    enabled: ").append(toIndentedString(enabled)).append("\n");
    sb.append("    maintenanceMode: ").append(toIndentedString(maintenanceMode)).append("\n");
    sb.append("    allowsFractionalUnits: ").append(toIndentedString(allowsFractionalUnits)).append("\n");
    sb.append("    allowsTrading: ").append(toIndentedString(allowsTrading)).append("\n");
    sb.append("    hasReporting: ").append(toIndentedString(hasReporting)).append("\n");
    sb.append("    isRealTimeConnection: ").append(toIndentedString(isRealTimeConnection)).append("\n");
    sb.append("    brokerageType: ").append(toIndentedString(brokerageType)).append("\n");
    sb.append("    exchanges: ").append(toIndentedString(exchanges)).append("\n");
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
    openapiFields.add("slug");
    openapiFields.add("name");
    openapiFields.add("display_name");
    openapiFields.add("description");
    openapiFields.add("aws_s3_logo_url");
    openapiFields.add("aws_s3_square_logo_url");
    openapiFields.add("open_url");
    openapiFields.add("url");
    openapiFields.add("enabled");
    openapiFields.add("maintenance_mode");
    openapiFields.add("allows_fractional_units");
    openapiFields.add("allows_trading");
    openapiFields.add("has_reporting");
    openapiFields.add("is_real_time_connection");
    openapiFields.add("brokerage_type");
    openapiFields.add("exchanges");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to Brokerage
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!Brokerage.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in Brokerage is not found in the empty JSON string", Brokerage.openapiRequiredFields.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("slug") != null && !jsonObj.get("slug").isJsonNull()) && !jsonObj.get("slug").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `slug` to be a primitive type in the JSON string but got `%s`", jsonObj.get("slug").toString()));
      }
      if ((jsonObj.get("name") != null && !jsonObj.get("name").isJsonNull()) && !jsonObj.get("name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("name").toString()));
      }
      if ((jsonObj.get("display_name") != null && !jsonObj.get("display_name").isJsonNull()) && !jsonObj.get("display_name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `display_name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("display_name").toString()));
      }
      if ((jsonObj.get("description") != null && !jsonObj.get("description").isJsonNull()) && !jsonObj.get("description").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `description` to be a primitive type in the JSON string but got `%s`", jsonObj.get("description").toString()));
      }
      if ((jsonObj.get("aws_s3_logo_url") != null && !jsonObj.get("aws_s3_logo_url").isJsonNull()) && !jsonObj.get("aws_s3_logo_url").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `aws_s3_logo_url` to be a primitive type in the JSON string but got `%s`", jsonObj.get("aws_s3_logo_url").toString()));
      }
      if (!jsonObj.get("aws_s3_square_logo_url").isJsonNull() && (jsonObj.get("aws_s3_square_logo_url") != null && !jsonObj.get("aws_s3_square_logo_url").isJsonNull()) && !jsonObj.get("aws_s3_square_logo_url").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `aws_s3_square_logo_url` to be a primitive type in the JSON string but got `%s`", jsonObj.get("aws_s3_square_logo_url").toString()));
      }
      if (!jsonObj.get("open_url").isJsonNull() && (jsonObj.get("open_url") != null && !jsonObj.get("open_url").isJsonNull()) && !jsonObj.get("open_url").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `open_url` to be a primitive type in the JSON string but got `%s`", jsonObj.get("open_url").toString()));
      }
      if ((jsonObj.get("url") != null && !jsonObj.get("url").isJsonNull()) && !jsonObj.get("url").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `url` to be a primitive type in the JSON string but got `%s`", jsonObj.get("url").toString()));
      }
      // validate the optional field `brokerage_type`
      if (jsonObj.get("brokerage_type") != null && !jsonObj.get("brokerage_type").isJsonNull()) {
        BrokerageType.validateJsonObject(jsonObj.getAsJsonObject("brokerage_type"));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("exchanges") != null && !jsonObj.get("exchanges").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `exchanges` to be an array in the JSON string but got `%s`", jsonObj.get("exchanges").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!Brokerage.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'Brokerage' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<Brokerage> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(Brokerage.class));

       return (TypeAdapter<T>) new TypeAdapter<Brokerage>() {
           @Override
           public void write(JsonWriter out, Brokerage value) throws IOException {
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
           public Brokerage read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             // store additional fields in the deserialized instance
             Brokerage instance = thisAdapter.fromJsonTree(jsonObj);
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
  * Create an instance of Brokerage given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of Brokerage
  * @throws IOException if the JSON string is invalid with respect to Brokerage
  */
  public static Brokerage fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, Brokerage.class);
  }

 /**
  * Convert an instance of Brokerage to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

