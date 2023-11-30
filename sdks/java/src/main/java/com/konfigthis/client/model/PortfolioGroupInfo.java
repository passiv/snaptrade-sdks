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
import com.konfigthis.client.model.Balance;
import com.konfigthis.client.model.BrokerageAuthorization;
import com.konfigthis.client.model.CalculatedTrade;
import com.konfigthis.client.model.ExcludedAsset;
import com.konfigthis.client.model.PortfolioGroupSettings;
import com.konfigthis.client.model.Position;
import com.konfigthis.client.model.TargetAsset;
import com.konfigthis.client.model.UniversalSymbol;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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
 * Summary of all relevant information about a portfolio group.
 */
@ApiModel(description = "Summary of all relevant information about a portfolio group.")@javax.annotation.Generated(value = "Generated by https://konfigthis.com")
public class PortfolioGroupInfo {
  public static final String SERIALIZED_NAME_SYMBOLS = "symbols";
  @SerializedName(SERIALIZED_NAME_SYMBOLS)
  private List<UniversalSymbol> symbols = null;

  public static final String SERIALIZED_NAME_QUOTABLE_SYMBOLS = "quotable_symbols";
  @SerializedName(SERIALIZED_NAME_QUOTABLE_SYMBOLS)
  private List<UniversalSymbol> quotableSymbols = null;

  public static final String SERIALIZED_NAME_BALANCES = "balances";
  @SerializedName(SERIALIZED_NAME_BALANCES)
  private List<Balance> balances = null;

  public static final String SERIALIZED_NAME_POSITIONS = "positions";
  @SerializedName(SERIALIZED_NAME_POSITIONS)
  private List<Position> positions = null;

  public static final String SERIALIZED_NAME_TARGET_POSITIONS = "target_positions";
  @SerializedName(SERIALIZED_NAME_TARGET_POSITIONS)
  private List<TargetAsset> targetPositions = null;

  public static final String SERIALIZED_NAME_IDEAL_POSITIONS = "ideal_positions";
  @SerializedName(SERIALIZED_NAME_IDEAL_POSITIONS)
  private List<Position> idealPositions = null;

  public static final String SERIALIZED_NAME_EXCLUDED_POSITIONS = "excluded_positions";
  @SerializedName(SERIALIZED_NAME_EXCLUDED_POSITIONS)
  private List<ExcludedAsset> excludedPositions = null;

  public static final String SERIALIZED_NAME_CALCULATED_TRADES = "calculated_trades";
  @SerializedName(SERIALIZED_NAME_CALCULATED_TRADES)
  private List<CalculatedTrade> calculatedTrades = null;

  public static final String SERIALIZED_NAME_BROKERAGE_AUTHORIZATIONS = "brokerage_authorizations";
  @SerializedName(SERIALIZED_NAME_BROKERAGE_AUTHORIZATIONS)
  private List<BrokerageAuthorization> brokerageAuthorizations = null;

  public static final String SERIALIZED_NAME_ACCURACY = "accuracy";
  @SerializedName(SERIALIZED_NAME_ACCURACY)
  private Double accuracy;

  public static final String SERIALIZED_NAME_SETTINGS = "settings";
  @SerializedName(SERIALIZED_NAME_SETTINGS)
  private PortfolioGroupSettings settings;

  public PortfolioGroupInfo() {
  }

  public PortfolioGroupInfo symbols(List<UniversalSymbol> symbols) {
    
    
    
    
    this.symbols = symbols;
    return this;
  }

  public PortfolioGroupInfo addSymbolsItem(UniversalSymbol symbolsItem) {
    if (this.symbols == null) {
      this.symbols = new ArrayList<>();
    }
    this.symbols.add(symbolsItem);
    return this;
  }

   /**
   * Get symbols
   * @return symbols
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<UniversalSymbol> getSymbols() {
    return symbols;
  }


  public void setSymbols(List<UniversalSymbol> symbols) {
    
    
    
    this.symbols = symbols;
  }


  public PortfolioGroupInfo quotableSymbols(List<UniversalSymbol> quotableSymbols) {
    
    
    
    
    this.quotableSymbols = quotableSymbols;
    return this;
  }

  public PortfolioGroupInfo addQuotableSymbolsItem(UniversalSymbol quotableSymbolsItem) {
    if (this.quotableSymbols == null) {
      this.quotableSymbols = new ArrayList<>();
    }
    this.quotableSymbols.add(quotableSymbolsItem);
    return this;
  }

   /**
   * Get quotableSymbols
   * @return quotableSymbols
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<UniversalSymbol> getQuotableSymbols() {
    return quotableSymbols;
  }


  public void setQuotableSymbols(List<UniversalSymbol> quotableSymbols) {
    
    
    
    this.quotableSymbols = quotableSymbols;
  }


  public PortfolioGroupInfo balances(List<Balance> balances) {
    
    
    
    
    this.balances = balances;
    return this;
  }

  public PortfolioGroupInfo addBalancesItem(Balance balancesItem) {
    if (this.balances == null) {
      this.balances = new ArrayList<>();
    }
    this.balances.add(balancesItem);
    return this;
  }

   /**
   * Get balances
   * @return balances
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<Balance> getBalances() {
    return balances;
  }


  public void setBalances(List<Balance> balances) {
    
    
    
    this.balances = balances;
  }


  public PortfolioGroupInfo positions(List<Position> positions) {
    
    
    
    
    this.positions = positions;
    return this;
  }

  public PortfolioGroupInfo addPositionsItem(Position positionsItem) {
    if (this.positions == null) {
      this.positions = new ArrayList<>();
    }
    this.positions.add(positionsItem);
    return this;
  }

   /**
   * Get positions
   * @return positions
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<Position> getPositions() {
    return positions;
  }


  public void setPositions(List<Position> positions) {
    
    
    
    this.positions = positions;
  }


  public PortfolioGroupInfo targetPositions(List<TargetAsset> targetPositions) {
    
    
    
    
    this.targetPositions = targetPositions;
    return this;
  }

  public PortfolioGroupInfo addTargetPositionsItem(TargetAsset targetPositionsItem) {
    if (this.targetPositions == null) {
      this.targetPositions = new ArrayList<>();
    }
    this.targetPositions.add(targetPositionsItem);
    return this;
  }

   /**
   * Get targetPositions
   * @return targetPositions
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<TargetAsset> getTargetPositions() {
    return targetPositions;
  }


  public void setTargetPositions(List<TargetAsset> targetPositions) {
    
    
    
    this.targetPositions = targetPositions;
  }


  public PortfolioGroupInfo idealPositions(List<Position> idealPositions) {
    
    
    
    
    this.idealPositions = idealPositions;
    return this;
  }

  public PortfolioGroupInfo addIdealPositionsItem(Position idealPositionsItem) {
    if (this.idealPositions == null) {
      this.idealPositions = new ArrayList<>();
    }
    this.idealPositions.add(idealPositionsItem);
    return this;
  }

   /**
   * Get idealPositions
   * @return idealPositions
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<Position> getIdealPositions() {
    return idealPositions;
  }


  public void setIdealPositions(List<Position> idealPositions) {
    
    
    
    this.idealPositions = idealPositions;
  }


  public PortfolioGroupInfo excludedPositions(List<ExcludedAsset> excludedPositions) {
    
    
    
    
    this.excludedPositions = excludedPositions;
    return this;
  }

  public PortfolioGroupInfo addExcludedPositionsItem(ExcludedAsset excludedPositionsItem) {
    if (this.excludedPositions == null) {
      this.excludedPositions = new ArrayList<>();
    }
    this.excludedPositions.add(excludedPositionsItem);
    return this;
  }

   /**
   * Get excludedPositions
   * @return excludedPositions
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<ExcludedAsset> getExcludedPositions() {
    return excludedPositions;
  }


  public void setExcludedPositions(List<ExcludedAsset> excludedPositions) {
    
    
    
    this.excludedPositions = excludedPositions;
  }


  public PortfolioGroupInfo calculatedTrades(List<CalculatedTrade> calculatedTrades) {
    
    
    
    
    this.calculatedTrades = calculatedTrades;
    return this;
  }

  public PortfolioGroupInfo addCalculatedTradesItem(CalculatedTrade calculatedTradesItem) {
    if (this.calculatedTrades == null) {
      this.calculatedTrades = new ArrayList<>();
    }
    this.calculatedTrades.add(calculatedTradesItem);
    return this;
  }

   /**
   * Get calculatedTrades
   * @return calculatedTrades
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<CalculatedTrade> getCalculatedTrades() {
    return calculatedTrades;
  }


  public void setCalculatedTrades(List<CalculatedTrade> calculatedTrades) {
    
    
    
    this.calculatedTrades = calculatedTrades;
  }


  public PortfolioGroupInfo brokerageAuthorizations(List<BrokerageAuthorization> brokerageAuthorizations) {
    
    
    
    
    this.brokerageAuthorizations = brokerageAuthorizations;
    return this;
  }

  public PortfolioGroupInfo addBrokerageAuthorizationsItem(BrokerageAuthorization brokerageAuthorizationsItem) {
    if (this.brokerageAuthorizations == null) {
      this.brokerageAuthorizations = new ArrayList<>();
    }
    this.brokerageAuthorizations.add(brokerageAuthorizationsItem);
    return this;
  }

   /**
   * Get brokerageAuthorizations
   * @return brokerageAuthorizations
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<BrokerageAuthorization> getBrokerageAuthorizations() {
    return brokerageAuthorizations;
  }


  public void setBrokerageAuthorizations(List<BrokerageAuthorization> brokerageAuthorizations) {
    
    
    
    this.brokerageAuthorizations = brokerageAuthorizations;
  }


  public PortfolioGroupInfo accuracy(Double accuracy) {
    
    
    
    
    this.accuracy = accuracy;
    return this;
  }

  public PortfolioGroupInfo accuracy(Integer accuracy) {
    
    
    
    
    this.accuracy = accuracy.doubleValue();
    return this;
  }

   /**
   * Get accuracy
   * @return accuracy
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "0.962", value = "")

  public Double getAccuracy() {
    return accuracy;
  }


  public void setAccuracy(Double accuracy) {
    
    
    
    this.accuracy = accuracy;
  }


  public PortfolioGroupInfo settings(PortfolioGroupSettings settings) {
    
    
    
    
    this.settings = settings;
    return this;
  }

   /**
   * Get settings
   * @return settings
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public PortfolioGroupSettings getSettings() {
    return settings;
  }


  public void setSettings(PortfolioGroupSettings settings) {
    
    
    
    this.settings = settings;
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
   * @return the PortfolioGroupInfo instance itself
   */
  public PortfolioGroupInfo putAdditionalProperty(String key, Object value) {
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
    PortfolioGroupInfo portfolioGroupInfo = (PortfolioGroupInfo) o;
    return Objects.equals(this.symbols, portfolioGroupInfo.symbols) &&
        Objects.equals(this.quotableSymbols, portfolioGroupInfo.quotableSymbols) &&
        Objects.equals(this.balances, portfolioGroupInfo.balances) &&
        Objects.equals(this.positions, portfolioGroupInfo.positions) &&
        Objects.equals(this.targetPositions, portfolioGroupInfo.targetPositions) &&
        Objects.equals(this.idealPositions, portfolioGroupInfo.idealPositions) &&
        Objects.equals(this.excludedPositions, portfolioGroupInfo.excludedPositions) &&
        Objects.equals(this.calculatedTrades, portfolioGroupInfo.calculatedTrades) &&
        Objects.equals(this.brokerageAuthorizations, portfolioGroupInfo.brokerageAuthorizations) &&
        Objects.equals(this.accuracy, portfolioGroupInfo.accuracy) &&
        Objects.equals(this.settings, portfolioGroupInfo.settings)&&
        Objects.equals(this.additionalProperties, portfolioGroupInfo.additionalProperties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(symbols, quotableSymbols, balances, positions, targetPositions, idealPositions, excludedPositions, calculatedTrades, brokerageAuthorizations, accuracy, settings, additionalProperties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PortfolioGroupInfo {\n");
    sb.append("    symbols: ").append(toIndentedString(symbols)).append("\n");
    sb.append("    quotableSymbols: ").append(toIndentedString(quotableSymbols)).append("\n");
    sb.append("    balances: ").append(toIndentedString(balances)).append("\n");
    sb.append("    positions: ").append(toIndentedString(positions)).append("\n");
    sb.append("    targetPositions: ").append(toIndentedString(targetPositions)).append("\n");
    sb.append("    idealPositions: ").append(toIndentedString(idealPositions)).append("\n");
    sb.append("    excludedPositions: ").append(toIndentedString(excludedPositions)).append("\n");
    sb.append("    calculatedTrades: ").append(toIndentedString(calculatedTrades)).append("\n");
    sb.append("    brokerageAuthorizations: ").append(toIndentedString(brokerageAuthorizations)).append("\n");
    sb.append("    accuracy: ").append(toIndentedString(accuracy)).append("\n");
    sb.append("    settings: ").append(toIndentedString(settings)).append("\n");
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
    openapiFields.add("symbols");
    openapiFields.add("quotable_symbols");
    openapiFields.add("balances");
    openapiFields.add("positions");
    openapiFields.add("target_positions");
    openapiFields.add("ideal_positions");
    openapiFields.add("excluded_positions");
    openapiFields.add("calculated_trades");
    openapiFields.add("brokerage_authorizations");
    openapiFields.add("accuracy");
    openapiFields.add("settings");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to PortfolioGroupInfo
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!PortfolioGroupInfo.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in PortfolioGroupInfo is not found in the empty JSON string", PortfolioGroupInfo.openapiRequiredFields.toString()));
        }
      }
      if (jsonObj.get("symbols") != null && !jsonObj.get("symbols").isJsonNull()) {
        JsonArray jsonArraysymbols = jsonObj.getAsJsonArray("symbols");
        if (jsonArraysymbols != null) {
          // ensure the json data is an array
          if (!jsonObj.get("symbols").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `symbols` to be an array in the JSON string but got `%s`", jsonObj.get("symbols").toString()));
          }

          // validate the optional field `symbols` (array)
          for (int i = 0; i < jsonArraysymbols.size(); i++) {
            UniversalSymbol.validateJsonObject(jsonArraysymbols.get(i).getAsJsonObject());
          };
        }
      }
      if (jsonObj.get("quotable_symbols") != null && !jsonObj.get("quotable_symbols").isJsonNull()) {
        JsonArray jsonArrayquotableSymbols = jsonObj.getAsJsonArray("quotable_symbols");
        if (jsonArrayquotableSymbols != null) {
          // ensure the json data is an array
          if (!jsonObj.get("quotable_symbols").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `quotable_symbols` to be an array in the JSON string but got `%s`", jsonObj.get("quotable_symbols").toString()));
          }

          // validate the optional field `quotable_symbols` (array)
          for (int i = 0; i < jsonArrayquotableSymbols.size(); i++) {
            UniversalSymbol.validateJsonObject(jsonArrayquotableSymbols.get(i).getAsJsonObject());
          };
        }
      }
      if (jsonObj.get("balances") != null && !jsonObj.get("balances").isJsonNull()) {
        JsonArray jsonArraybalances = jsonObj.getAsJsonArray("balances");
        if (jsonArraybalances != null) {
          // ensure the json data is an array
          if (!jsonObj.get("balances").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `balances` to be an array in the JSON string but got `%s`", jsonObj.get("balances").toString()));
          }

          // validate the optional field `balances` (array)
          for (int i = 0; i < jsonArraybalances.size(); i++) {
            Balance.validateJsonObject(jsonArraybalances.get(i).getAsJsonObject());
          };
        }
      }
      if (jsonObj.get("positions") != null && !jsonObj.get("positions").isJsonNull()) {
        JsonArray jsonArraypositions = jsonObj.getAsJsonArray("positions");
        if (jsonArraypositions != null) {
          // ensure the json data is an array
          if (!jsonObj.get("positions").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `positions` to be an array in the JSON string but got `%s`", jsonObj.get("positions").toString()));
          }

          // validate the optional field `positions` (array)
          for (int i = 0; i < jsonArraypositions.size(); i++) {
            Position.validateJsonObject(jsonArraypositions.get(i).getAsJsonObject());
          };
        }
      }
      if (jsonObj.get("target_positions") != null && !jsonObj.get("target_positions").isJsonNull()) {
        JsonArray jsonArraytargetPositions = jsonObj.getAsJsonArray("target_positions");
        if (jsonArraytargetPositions != null) {
          // ensure the json data is an array
          if (!jsonObj.get("target_positions").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `target_positions` to be an array in the JSON string but got `%s`", jsonObj.get("target_positions").toString()));
          }

          // validate the optional field `target_positions` (array)
          for (int i = 0; i < jsonArraytargetPositions.size(); i++) {
            TargetAsset.validateJsonObject(jsonArraytargetPositions.get(i).getAsJsonObject());
          };
        }
      }
      if (jsonObj.get("ideal_positions") != null && !jsonObj.get("ideal_positions").isJsonNull()) {
        JsonArray jsonArrayidealPositions = jsonObj.getAsJsonArray("ideal_positions");
        if (jsonArrayidealPositions != null) {
          // ensure the json data is an array
          if (!jsonObj.get("ideal_positions").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `ideal_positions` to be an array in the JSON string but got `%s`", jsonObj.get("ideal_positions").toString()));
          }

          // validate the optional field `ideal_positions` (array)
          for (int i = 0; i < jsonArrayidealPositions.size(); i++) {
            Position.validateJsonObject(jsonArrayidealPositions.get(i).getAsJsonObject());
          };
        }
      }
      if (jsonObj.get("excluded_positions") != null && !jsonObj.get("excluded_positions").isJsonNull()) {
        JsonArray jsonArrayexcludedPositions = jsonObj.getAsJsonArray("excluded_positions");
        if (jsonArrayexcludedPositions != null) {
          // ensure the json data is an array
          if (!jsonObj.get("excluded_positions").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `excluded_positions` to be an array in the JSON string but got `%s`", jsonObj.get("excluded_positions").toString()));
          }

          // validate the optional field `excluded_positions` (array)
          for (int i = 0; i < jsonArrayexcludedPositions.size(); i++) {
            ExcludedAsset.validateJsonObject(jsonArrayexcludedPositions.get(i).getAsJsonObject());
          };
        }
      }
      if (jsonObj.get("calculated_trades") != null && !jsonObj.get("calculated_trades").isJsonNull()) {
        JsonArray jsonArraycalculatedTrades = jsonObj.getAsJsonArray("calculated_trades");
        if (jsonArraycalculatedTrades != null) {
          // ensure the json data is an array
          if (!jsonObj.get("calculated_trades").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `calculated_trades` to be an array in the JSON string but got `%s`", jsonObj.get("calculated_trades").toString()));
          }

          // validate the optional field `calculated_trades` (array)
          for (int i = 0; i < jsonArraycalculatedTrades.size(); i++) {
            CalculatedTrade.validateJsonObject(jsonArraycalculatedTrades.get(i).getAsJsonObject());
          };
        }
      }
      if (jsonObj.get("brokerage_authorizations") != null && !jsonObj.get("brokerage_authorizations").isJsonNull()) {
        JsonArray jsonArraybrokerageAuthorizations = jsonObj.getAsJsonArray("brokerage_authorizations");
        if (jsonArraybrokerageAuthorizations != null) {
          // ensure the json data is an array
          if (!jsonObj.get("brokerage_authorizations").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `brokerage_authorizations` to be an array in the JSON string but got `%s`", jsonObj.get("brokerage_authorizations").toString()));
          }

          // validate the optional field `brokerage_authorizations` (array)
          for (int i = 0; i < jsonArraybrokerageAuthorizations.size(); i++) {
            BrokerageAuthorization.validateJsonObject(jsonArraybrokerageAuthorizations.get(i).getAsJsonObject());
          };
        }
      }
      // validate the optional field `settings`
      if (jsonObj.get("settings") != null && !jsonObj.get("settings").isJsonNull()) {
        PortfolioGroupSettings.validateJsonObject(jsonObj.getAsJsonObject("settings"));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!PortfolioGroupInfo.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'PortfolioGroupInfo' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<PortfolioGroupInfo> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(PortfolioGroupInfo.class));

       return (TypeAdapter<T>) new TypeAdapter<PortfolioGroupInfo>() {
           @Override
           public void write(JsonWriter out, PortfolioGroupInfo value) throws IOException {
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
           public PortfolioGroupInfo read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             // store additional fields in the deserialized instance
             PortfolioGroupInfo instance = thisAdapter.fromJsonTree(jsonObj);
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
  * Create an instance of PortfolioGroupInfo given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of PortfolioGroupInfo
  * @throws IOException if the JSON string is invalid with respect to PortfolioGroupInfo
  */
  public static PortfolioGroupInfo fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, PortfolioGroupInfo.class);
  }

 /**
  * Convert an instance of PortfolioGroupInfo to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

