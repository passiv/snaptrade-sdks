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
 * StrategyQuotesInner
 */
@javax.annotation.Generated(value = "Generated by https://konfigthis.com")
public class StrategyQuotesInner {
  public static final String SERIALIZED_NAME_VARIANT_ID = "variantId";
  @SerializedName(SERIALIZED_NAME_VARIANT_ID)
  private Integer variantId;

  public static final String SERIALIZED_NAME_BID_PRICE = "bidPrice";
  @SerializedName(SERIALIZED_NAME_BID_PRICE)
  private BigDecimal bidPrice;

  public static final String SERIALIZED_NAME_ASK_PRICE = "askPrice";
  @SerializedName(SERIALIZED_NAME_ASK_PRICE)
  private BigDecimal askPrice;

  public static final String SERIALIZED_NAME_UNDERLYING = "underlying";
  @SerializedName(SERIALIZED_NAME_UNDERLYING)
  private String underlying;

  public static final String SERIALIZED_NAME_UNDERLYING_ID = "underlyingId";
  @SerializedName(SERIALIZED_NAME_UNDERLYING_ID)
  private Integer underlyingId;

  public static final String SERIALIZED_NAME_OPEN_PRICE = "openPrice";
  @SerializedName(SERIALIZED_NAME_OPEN_PRICE)
  private String openPrice;

  public static final String SERIALIZED_NAME_VOLATILITY = "volatility";
  @SerializedName(SERIALIZED_NAME_VOLATILITY)
  private BigDecimal volatility;

  public static final String SERIALIZED_NAME_DELTA = "delta";
  @SerializedName(SERIALIZED_NAME_DELTA)
  private BigDecimal delta;

  public static final String SERIALIZED_NAME_GAMMA = "gamma";
  @SerializedName(SERIALIZED_NAME_GAMMA)
  private BigDecimal gamma;

  public static final String SERIALIZED_NAME_THETA = "theta";
  @SerializedName(SERIALIZED_NAME_THETA)
  private BigDecimal theta;

  public static final String SERIALIZED_NAME_VEGA = "vega";
  @SerializedName(SERIALIZED_NAME_VEGA)
  private BigDecimal vega;

  public static final String SERIALIZED_NAME_RHO = "rho";
  @SerializedName(SERIALIZED_NAME_RHO)
  private BigDecimal rho;

  public static final String SERIALIZED_NAME_IS_REAL_TIME = "isRealTime";
  @SerializedName(SERIALIZED_NAME_IS_REAL_TIME)
  private Boolean isRealTime;

  public StrategyQuotesInner() {
  }

  public StrategyQuotesInner variantId(Integer variantId) {
    
    this.variantId = variantId;
    return this;
  }

   /**
   * Get variantId
   * @return variantId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "1", value = "")

  public Integer getVariantId() {
    return variantId;
  }


  public void setVariantId(Integer variantId) {
    this.variantId = variantId;
  }


  public StrategyQuotesInner bidPrice(BigDecimal bidPrice) {
    
    this.bidPrice = bidPrice;
    return this;
  }

   /**
   * Get bidPrice
   * @return bidPrice
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "0.24", value = "")

  public BigDecimal getBidPrice() {
    return bidPrice;
  }


  public void setBidPrice(BigDecimal bidPrice) {
    this.bidPrice = bidPrice;
  }


  public StrategyQuotesInner askPrice(BigDecimal askPrice) {
    
    this.askPrice = askPrice;
    return this;
  }

   /**
   * Get askPrice
   * @return askPrice
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "0.34", value = "")

  public BigDecimal getAskPrice() {
    return askPrice;
  }


  public void setAskPrice(BigDecimal askPrice) {
    this.askPrice = askPrice;
  }


  public StrategyQuotesInner underlying(String underlying) {
    
    this.underlying = underlying;
    return this;
  }

   /**
   * Get underlying
   * @return underlying
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "AC.TO", value = "")

  public String getUnderlying() {
    return underlying;
  }


  public void setUnderlying(String underlying) {
    this.underlying = underlying;
  }


  public StrategyQuotesInner underlyingId(Integer underlyingId) {
    
    this.underlyingId = underlyingId;
    return this;
  }

   /**
   * Get underlyingId
   * @return underlyingId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "7960447", value = "")

  public Integer getUnderlyingId() {
    return underlyingId;
  }


  public void setUnderlyingId(Integer underlyingId) {
    this.underlyingId = underlyingId;
  }


  public StrategyQuotesInner openPrice(String openPrice) {
    
    this.openPrice = openPrice;
    return this;
  }

   /**
   * Get openPrice
   * @return openPrice
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getOpenPrice() {
    return openPrice;
  }


  public void setOpenPrice(String openPrice) {
    this.openPrice = openPrice;
  }


  public StrategyQuotesInner volatility(BigDecimal volatility) {
    
    this.volatility = volatility;
    return this;
  }

   /**
   * Get volatility
   * @return volatility
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "108.022492", value = "")

  public BigDecimal getVolatility() {
    return volatility;
  }


  public void setVolatility(BigDecimal volatility) {
    this.volatility = volatility;
  }


  public StrategyQuotesInner delta(BigDecimal delta) {
    
    this.delta = delta;
    return this;
  }

   /**
   * Get delta
   * @return delta
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "-0.038001", value = "")

  public BigDecimal getDelta() {
    return delta;
  }


  public void setDelta(BigDecimal delta) {
    this.delta = delta;
  }


  public StrategyQuotesInner gamma(BigDecimal gamma) {
    
    this.gamma = gamma;
    return this;
  }

   /**
   * Get gamma
   * @return gamma
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "0.039656", value = "")

  public BigDecimal getGamma() {
    return gamma;
  }


  public void setGamma(BigDecimal gamma) {
    this.gamma = gamma;
  }


  public StrategyQuotesInner theta(BigDecimal theta) {
    
    this.theta = theta;
    return this;
  }

   /**
   * Get theta
   * @return theta
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "-0.003889", value = "")

  public BigDecimal getTheta() {
    return theta;
  }


  public void setTheta(BigDecimal theta) {
    this.theta = theta;
  }


  public StrategyQuotesInner vega(BigDecimal vega) {
    
    this.vega = vega;
    return this;
  }

   /**
   * Get vega
   * @return vega
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "0.015522", value = "")

  public BigDecimal getVega() {
    return vega;
  }


  public void setVega(BigDecimal vega) {
    this.vega = vega;
  }


  public StrategyQuotesInner rho(BigDecimal rho) {
    
    this.rho = rho;
    return this;
  }

   /**
   * Get rho
   * @return rho
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "-0.002157", value = "")

  public BigDecimal getRho() {
    return rho;
  }


  public void setRho(BigDecimal rho) {
    this.rho = rho;
  }


  public StrategyQuotesInner isRealTime(Boolean isRealTime) {
    
    this.isRealTime = isRealTime;
    return this;
  }

   /**
   * Get isRealTime
   * @return isRealTime
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Boolean getIsRealTime() {
    return isRealTime;
  }


  public void setIsRealTime(Boolean isRealTime) {
    this.isRealTime = isRealTime;
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
   * @return the StrategyQuotesInner instance itself
   */
  public StrategyQuotesInner putAdditionalProperty(String key, Object value) {
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
    StrategyQuotesInner strategyQuotesInner = (StrategyQuotesInner) o;
    return Objects.equals(this.variantId, strategyQuotesInner.variantId) &&
        Objects.equals(this.bidPrice, strategyQuotesInner.bidPrice) &&
        Objects.equals(this.askPrice, strategyQuotesInner.askPrice) &&
        Objects.equals(this.underlying, strategyQuotesInner.underlying) &&
        Objects.equals(this.underlyingId, strategyQuotesInner.underlyingId) &&
        Objects.equals(this.openPrice, strategyQuotesInner.openPrice) &&
        Objects.equals(this.volatility, strategyQuotesInner.volatility) &&
        Objects.equals(this.delta, strategyQuotesInner.delta) &&
        Objects.equals(this.gamma, strategyQuotesInner.gamma) &&
        Objects.equals(this.theta, strategyQuotesInner.theta) &&
        Objects.equals(this.vega, strategyQuotesInner.vega) &&
        Objects.equals(this.rho, strategyQuotesInner.rho) &&
        Objects.equals(this.isRealTime, strategyQuotesInner.isRealTime)&&
        Objects.equals(this.additionalProperties, strategyQuotesInner.additionalProperties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(variantId, bidPrice, askPrice, underlying, underlyingId, openPrice, volatility, delta, gamma, theta, vega, rho, isRealTime, additionalProperties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class StrategyQuotesInner {\n");
    sb.append("    variantId: ").append(toIndentedString(variantId)).append("\n");
    sb.append("    bidPrice: ").append(toIndentedString(bidPrice)).append("\n");
    sb.append("    askPrice: ").append(toIndentedString(askPrice)).append("\n");
    sb.append("    underlying: ").append(toIndentedString(underlying)).append("\n");
    sb.append("    underlyingId: ").append(toIndentedString(underlyingId)).append("\n");
    sb.append("    openPrice: ").append(toIndentedString(openPrice)).append("\n");
    sb.append("    volatility: ").append(toIndentedString(volatility)).append("\n");
    sb.append("    delta: ").append(toIndentedString(delta)).append("\n");
    sb.append("    gamma: ").append(toIndentedString(gamma)).append("\n");
    sb.append("    theta: ").append(toIndentedString(theta)).append("\n");
    sb.append("    vega: ").append(toIndentedString(vega)).append("\n");
    sb.append("    rho: ").append(toIndentedString(rho)).append("\n");
    sb.append("    isRealTime: ").append(toIndentedString(isRealTime)).append("\n");
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
    openapiFields.add("variantId");
    openapiFields.add("bidPrice");
    openapiFields.add("askPrice");
    openapiFields.add("underlying");
    openapiFields.add("underlyingId");
    openapiFields.add("openPrice");
    openapiFields.add("volatility");
    openapiFields.add("delta");
    openapiFields.add("gamma");
    openapiFields.add("theta");
    openapiFields.add("vega");
    openapiFields.add("rho");
    openapiFields.add("isRealTime");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to StrategyQuotesInner
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!StrategyQuotesInner.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in StrategyQuotesInner is not found in the empty JSON string", StrategyQuotesInner.openapiRequiredFields.toString()));
        }
      }
      if ((jsonObj.get("underlying") != null && !jsonObj.get("underlying").isJsonNull()) && !jsonObj.get("underlying").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `underlying` to be a primitive type in the JSON string but got `%s`", jsonObj.get("underlying").toString()));
      }
      if ((jsonObj.get("openPrice") != null && !jsonObj.get("openPrice").isJsonNull()) && !jsonObj.get("openPrice").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `openPrice` to be a primitive type in the JSON string but got `%s`", jsonObj.get("openPrice").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!StrategyQuotesInner.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'StrategyQuotesInner' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<StrategyQuotesInner> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(StrategyQuotesInner.class));

       return (TypeAdapter<T>) new TypeAdapter<StrategyQuotesInner>() {
           @Override
           public void write(JsonWriter out, StrategyQuotesInner value) throws IOException {
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
           public StrategyQuotesInner read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             // store additional fields in the deserialized instance
             StrategyQuotesInner instance = thisAdapter.fromJsonTree(jsonObj);
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
  * Create an instance of StrategyQuotesInner given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of StrategyQuotesInner
  * @throws IOException if the JSON string is invalid with respect to StrategyQuotesInner
  */
  public static StrategyQuotesInner fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, StrategyQuotesInner.class);
  }

 /**
  * Convert an instance of StrategyQuotesInner to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

