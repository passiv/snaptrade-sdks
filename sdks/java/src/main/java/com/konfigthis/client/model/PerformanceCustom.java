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
import com.konfigthis.client.model.MonthlyDividends;
import com.konfigthis.client.model.NetContributions;
import com.konfigthis.client.model.NetDividend;
import com.konfigthis.client.model.PastValue;
import com.konfigthis.client.model.SubPeriodReturnRate;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.math.BigDecimal;
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

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import com.konfigthis.client.JSON;

/**
 * Performance Custom Response Object
 */
@ApiModel(description = "Performance Custom Response Object")
@javax.annotation.Generated(value = "Generated by https://konfigthis.com")
public class PerformanceCustom {
  public static final String SERIALIZED_NAME_TOTAL_EQUITY_TIMEFRAME = "totalEquityTimeframe";
  @SerializedName(SERIALIZED_NAME_TOTAL_EQUITY_TIMEFRAME)
  private List<PastValue> totalEquityTimeframe = null;

  public static final String SERIALIZED_NAME_CONTRIBUTIONS = "contributions";
  @SerializedName(SERIALIZED_NAME_CONTRIBUTIONS)
  private NetContributions contributions;

  public static final String SERIALIZED_NAME_CONTRIBUTION_TIMEFRAME = "contributionTimeframe";
  @SerializedName(SERIALIZED_NAME_CONTRIBUTION_TIMEFRAME)
  private List<PastValue> contributionTimeframe = null;

  public static final String SERIALIZED_NAME_CONTRIBUTION_TIMEFRAME_CUMULATIVE = "contributionTimeframeCumulative";
  @SerializedName(SERIALIZED_NAME_CONTRIBUTION_TIMEFRAME_CUMULATIVE)
  private List<PastValue> contributionTimeframeCumulative = null;

  public static final String SERIALIZED_NAME_WITHDRAWAL_TIMEFRAME = "withdrawalTimeframe";
  @SerializedName(SERIALIZED_NAME_WITHDRAWAL_TIMEFRAME)
  private List<PastValue> withdrawalTimeframe = null;

  public static final String SERIALIZED_NAME_CONTRIBUTION_STREAK = "contributionStreak";
  @SerializedName(SERIALIZED_NAME_CONTRIBUTION_STREAK)
  private BigDecimal contributionStreak;

  public static final String SERIALIZED_NAME_CONTRIBUTION_MONTHS_CONTRIBUTED = "contributionMonthsContributed";
  @SerializedName(SERIALIZED_NAME_CONTRIBUTION_MONTHS_CONTRIBUTED)
  private BigDecimal contributionMonthsContributed;

  public static final String SERIALIZED_NAME_CONTRIBUTION_TOTAL_MONTHS = "contributionTotalMonths";
  @SerializedName(SERIALIZED_NAME_CONTRIBUTION_TOTAL_MONTHS)
  private BigDecimal contributionTotalMonths;

  public static final String SERIALIZED_NAME_DIVIDENDS = "dividends";
  @SerializedName(SERIALIZED_NAME_DIVIDENDS)
  private List<NetDividend> dividends = null;

  public static final String SERIALIZED_NAME_DIVIDEND_INCOME = "dividendIncome";
  @SerializedName(SERIALIZED_NAME_DIVIDEND_INCOME)
  private BigDecimal dividendIncome;

  public static final String SERIALIZED_NAME_MONTHLY_DIVIDENDS = "monthlyDividends";
  @SerializedName(SERIALIZED_NAME_MONTHLY_DIVIDENDS)
  private BigDecimal monthlyDividends;

  public static final String SERIALIZED_NAME_BAD_TICKERS = "badTickers";
  @SerializedName(SERIALIZED_NAME_BAD_TICKERS)
  private List<String> badTickers = null;

  public static final String SERIALIZED_NAME_DIVIDEND_TIMELINE = "dividendTimeline";
  @SerializedName(SERIALIZED_NAME_DIVIDEND_TIMELINE)
  private List<MonthlyDividends> dividendTimeline = null;

  public static final String SERIALIZED_NAME_COMMISSIONS = "commissions";
  @SerializedName(SERIALIZED_NAME_COMMISSIONS)
  private BigDecimal commissions;

  public static final String SERIALIZED_NAME_FOREX_FEES = "forexFees";
  @SerializedName(SERIALIZED_NAME_FOREX_FEES)
  private BigDecimal forexFees;

  public static final String SERIALIZED_NAME_FEES = "fees";
  @SerializedName(SERIALIZED_NAME_FEES)
  private BigDecimal fees;

  public static final String SERIALIZED_NAME_RATE_OF_RETURN = "rateOfReturn";
  @SerializedName(SERIALIZED_NAME_RATE_OF_RETURN)
  private BigDecimal rateOfReturn;

  public static final String SERIALIZED_NAME_RETURN_RATE_TIMEFRAME = "returnRateTimeframe";
  @SerializedName(SERIALIZED_NAME_RETURN_RATE_TIMEFRAME)
  private List<SubPeriodReturnRate> returnRateTimeframe = null;

  public static final String SERIALIZED_NAME_DETAILED_MODE = "detailedMode";
  @SerializedName(SERIALIZED_NAME_DETAILED_MODE)
  private Boolean detailedMode;

  public PerformanceCustom() {
  }

  public PerformanceCustom totalEquityTimeframe(List<PastValue> totalEquityTimeframe) {
    
    this.totalEquityTimeframe = totalEquityTimeframe;
    return this;
  }

  public PerformanceCustom addTotalEquityTimeframeItem(PastValue totalEquityTimeframeItem) {
    if (this.totalEquityTimeframe == null) {
      this.totalEquityTimeframe = new ArrayList<>();
    }
    this.totalEquityTimeframe.add(totalEquityTimeframeItem);
    return this;
  }

   /**
   * Get totalEquityTimeframe
   * @return totalEquityTimeframe
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<PastValue> getTotalEquityTimeframe() {
    return totalEquityTimeframe;
  }


  public void setTotalEquityTimeframe(List<PastValue> totalEquityTimeframe) {
    this.totalEquityTimeframe = totalEquityTimeframe;
  }


  public PerformanceCustom contributions(NetContributions contributions) {
    
    this.contributions = contributions;
    return this;
  }

   /**
   * Get contributions
   * @return contributions
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public NetContributions getContributions() {
    return contributions;
  }


  public void setContributions(NetContributions contributions) {
    this.contributions = contributions;
  }


  public PerformanceCustom contributionTimeframe(List<PastValue> contributionTimeframe) {
    
    this.contributionTimeframe = contributionTimeframe;
    return this;
  }

  public PerformanceCustom addContributionTimeframeItem(PastValue contributionTimeframeItem) {
    if (this.contributionTimeframe == null) {
      this.contributionTimeframe = new ArrayList<>();
    }
    this.contributionTimeframe.add(contributionTimeframeItem);
    return this;
  }

   /**
   * Get contributionTimeframe
   * @return contributionTimeframe
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<PastValue> getContributionTimeframe() {
    return contributionTimeframe;
  }


  public void setContributionTimeframe(List<PastValue> contributionTimeframe) {
    this.contributionTimeframe = contributionTimeframe;
  }


  public PerformanceCustom contributionTimeframeCumulative(List<PastValue> contributionTimeframeCumulative) {
    
    this.contributionTimeframeCumulative = contributionTimeframeCumulative;
    return this;
  }

  public PerformanceCustom addContributionTimeframeCumulativeItem(PastValue contributionTimeframeCumulativeItem) {
    if (this.contributionTimeframeCumulative == null) {
      this.contributionTimeframeCumulative = new ArrayList<>();
    }
    this.contributionTimeframeCumulative.add(contributionTimeframeCumulativeItem);
    return this;
  }

   /**
   * Get contributionTimeframeCumulative
   * @return contributionTimeframeCumulative
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<PastValue> getContributionTimeframeCumulative() {
    return contributionTimeframeCumulative;
  }


  public void setContributionTimeframeCumulative(List<PastValue> contributionTimeframeCumulative) {
    this.contributionTimeframeCumulative = contributionTimeframeCumulative;
  }


  public PerformanceCustom withdrawalTimeframe(List<PastValue> withdrawalTimeframe) {
    
    this.withdrawalTimeframe = withdrawalTimeframe;
    return this;
  }

  public PerformanceCustom addWithdrawalTimeframeItem(PastValue withdrawalTimeframeItem) {
    if (this.withdrawalTimeframe == null) {
      this.withdrawalTimeframe = new ArrayList<>();
    }
    this.withdrawalTimeframe.add(withdrawalTimeframeItem);
    return this;
  }

   /**
   * Get withdrawalTimeframe
   * @return withdrawalTimeframe
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<PastValue> getWithdrawalTimeframe() {
    return withdrawalTimeframe;
  }


  public void setWithdrawalTimeframe(List<PastValue> withdrawalTimeframe) {
    this.withdrawalTimeframe = withdrawalTimeframe;
  }


  public PerformanceCustom contributionStreak(BigDecimal contributionStreak) {
    
    this.contributionStreak = contributionStreak;
    return this;
  }

   /**
   * Current streak of cosecutive months where contributions were made
   * @return contributionStreak
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "5", value = "Current streak of cosecutive months where contributions were made")

  public BigDecimal getContributionStreak() {
    return contributionStreak;
  }


  public void setContributionStreak(BigDecimal contributionStreak) {
    this.contributionStreak = contributionStreak;
  }


  public PerformanceCustom contributionMonthsContributed(BigDecimal contributionMonthsContributed) {
    
    this.contributionMonthsContributed = contributionMonthsContributed;
    return this;
  }

   /**
   * Number of months in the timeframe with contributions
   * @return contributionMonthsContributed
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "10", value = "Number of months in the timeframe with contributions")

  public BigDecimal getContributionMonthsContributed() {
    return contributionMonthsContributed;
  }


  public void setContributionMonthsContributed(BigDecimal contributionMonthsContributed) {
    this.contributionMonthsContributed = contributionMonthsContributed;
  }


  public PerformanceCustom contributionTotalMonths(BigDecimal contributionTotalMonths) {
    
    this.contributionTotalMonths = contributionTotalMonths;
    return this;
  }

   /**
   * Total months in timeframe
   * @return contributionTotalMonths
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "13", value = "Total months in timeframe")

  public BigDecimal getContributionTotalMonths() {
    return contributionTotalMonths;
  }


  public void setContributionTotalMonths(BigDecimal contributionTotalMonths) {
    this.contributionTotalMonths = contributionTotalMonths;
  }


  public PerformanceCustom dividends(List<NetDividend> dividends) {
    
    this.dividends = dividends;
    return this;
  }

  public PerformanceCustom addDividendsItem(NetDividend dividendsItem) {
    if (this.dividends == null) {
      this.dividends = new ArrayList<>();
    }
    this.dividends.add(dividendsItem);
    return this;
  }

   /**
   * Get dividends
   * @return dividends
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<NetDividend> getDividends() {
    return dividends;
  }


  public void setDividends(List<NetDividend> dividends) {
    this.dividends = dividends;
  }


  public PerformanceCustom dividendIncome(BigDecimal dividendIncome) {
    
    this.dividendIncome = dividendIncome;
    return this;
  }

   /**
   * Total dividends received over the timeframe
   * @return dividendIncome
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "135.97", value = "Total dividends received over the timeframe")

  public BigDecimal getDividendIncome() {
    return dividendIncome;
  }


  public void setDividendIncome(BigDecimal dividendIncome) {
    this.dividendIncome = dividendIncome;
  }


  public PerformanceCustom monthlyDividends(BigDecimal monthlyDividends) {
    
    this.monthlyDividends = monthlyDividends;
    return this;
  }

   /**
   * Average dividends received per month over the timeframe
   * @return monthlyDividends
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "26.37", value = "Average dividends received per month over the timeframe")

  public BigDecimal getMonthlyDividends() {
    return monthlyDividends;
  }


  public void setMonthlyDividends(BigDecimal monthlyDividends) {
    this.monthlyDividends = monthlyDividends;
  }


  public PerformanceCustom badTickers(List<String> badTickers) {
    
    this.badTickers = badTickers;
    return this;
  }

  public PerformanceCustom addBadTickersItem(String badTickersItem) {
    if (this.badTickers == null) {
      this.badTickers = new ArrayList<>();
    }
    this.badTickers.add(badTickersItem);
    return this;
  }

   /**
   * list of tickers which may not be supported or may not have accurate price data
   * @return badTickers
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "list of tickers which may not be supported or may not have accurate price data")

  public List<String> getBadTickers() {
    return badTickers;
  }


  public void setBadTickers(List<String> badTickers) {
    this.badTickers = badTickers;
  }


  public PerformanceCustom dividendTimeline(List<MonthlyDividends> dividendTimeline) {
    
    this.dividendTimeline = dividendTimeline;
    return this;
  }

  public PerformanceCustom addDividendTimelineItem(MonthlyDividends dividendTimelineItem) {
    if (this.dividendTimeline == null) {
      this.dividendTimeline = new ArrayList<>();
    }
    this.dividendTimeline.add(dividendTimelineItem);
    return this;
  }

   /**
   * Get dividendTimeline
   * @return dividendTimeline
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<MonthlyDividends> getDividendTimeline() {
    return dividendTimeline;
  }


  public void setDividendTimeline(List<MonthlyDividends> dividendTimeline) {
    this.dividendTimeline = dividendTimeline;
  }


  public PerformanceCustom commissions(BigDecimal commissions) {
    
    this.commissions = commissions;
    return this;
  }

   /**
   * commissions incurred during the timeframe
   * @return commissions
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "3.26", value = "commissions incurred during the timeframe")

  public BigDecimal getCommissions() {
    return commissions;
  }


  public void setCommissions(BigDecimal commissions) {
    this.commissions = commissions;
  }


  public PerformanceCustom forexFees(BigDecimal forexFees) {
    
    this.forexFees = forexFees;
    return this;
  }

   /**
   * forex fees incurred during the timeframe
   * @return forexFees
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "5.26", value = "forex fees incurred during the timeframe")

  public BigDecimal getForexFees() {
    return forexFees;
  }


  public void setForexFees(BigDecimal forexFees) {
    this.forexFees = forexFees;
  }


  public PerformanceCustom fees(BigDecimal fees) {
    
    this.fees = fees;
    return this;
  }

   /**
   * other fees incurred during the timeframe
   * @return fees
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "2.72", value = "other fees incurred during the timeframe")

  public BigDecimal getFees() {
    return fees;
  }


  public void setFees(BigDecimal fees) {
    this.fees = fees;
  }


  public PerformanceCustom rateOfReturn(BigDecimal rateOfReturn) {
    
    this.rateOfReturn = rateOfReturn;
    return this;
  }

   /**
   * The return rate over the timeframe. Annualized if timeframe is longer than 1 year
   * @return rateOfReturn
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "0.082312367452", value = "The return rate over the timeframe. Annualized if timeframe is longer than 1 year")

  public BigDecimal getRateOfReturn() {
    return rateOfReturn;
  }


  public void setRateOfReturn(BigDecimal rateOfReturn) {
    this.rateOfReturn = rateOfReturn;
  }


  public PerformanceCustom returnRateTimeframe(List<SubPeriodReturnRate> returnRateTimeframe) {
    
    this.returnRateTimeframe = returnRateTimeframe;
    return this;
  }

  public PerformanceCustom addReturnRateTimeframeItem(SubPeriodReturnRate returnRateTimeframeItem) {
    if (this.returnRateTimeframe == null) {
      this.returnRateTimeframe = new ArrayList<>();
    }
    this.returnRateTimeframe.add(returnRateTimeframeItem);
    return this;
  }

   /**
   * Get returnRateTimeframe
   * @return returnRateTimeframe
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<SubPeriodReturnRate> getReturnRateTimeframe() {
    return returnRateTimeframe;
  }


  public void setReturnRateTimeframe(List<SubPeriodReturnRate> returnRateTimeframe) {
    this.returnRateTimeframe = returnRateTimeframe;
  }


  public PerformanceCustom detailedMode(Boolean detailedMode) {
    
    this.detailedMode = detailedMode;
    return this;
  }

   /**
   * Whether the user has detailed mode enabled (more frequent data points for totalEquity and contribution timeframes)
   * @return detailedMode
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Whether the user has detailed mode enabled (more frequent data points for totalEquity and contribution timeframes)")

  public Boolean getDetailedMode() {
    return detailedMode;
  }


  public void setDetailedMode(Boolean detailedMode) {
    this.detailedMode = detailedMode;
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
   * @return the PerformanceCustom instance itself
   */
  public PerformanceCustom putAdditionalProperty(String key, Object value) {
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
    PerformanceCustom performanceCustom = (PerformanceCustom) o;
    return Objects.equals(this.totalEquityTimeframe, performanceCustom.totalEquityTimeframe) &&
        Objects.equals(this.contributions, performanceCustom.contributions) &&
        Objects.equals(this.contributionTimeframe, performanceCustom.contributionTimeframe) &&
        Objects.equals(this.contributionTimeframeCumulative, performanceCustom.contributionTimeframeCumulative) &&
        Objects.equals(this.withdrawalTimeframe, performanceCustom.withdrawalTimeframe) &&
        Objects.equals(this.contributionStreak, performanceCustom.contributionStreak) &&
        Objects.equals(this.contributionMonthsContributed, performanceCustom.contributionMonthsContributed) &&
        Objects.equals(this.contributionTotalMonths, performanceCustom.contributionTotalMonths) &&
        Objects.equals(this.dividends, performanceCustom.dividends) &&
        Objects.equals(this.dividendIncome, performanceCustom.dividendIncome) &&
        Objects.equals(this.monthlyDividends, performanceCustom.monthlyDividends) &&
        Objects.equals(this.badTickers, performanceCustom.badTickers) &&
        Objects.equals(this.dividendTimeline, performanceCustom.dividendTimeline) &&
        Objects.equals(this.commissions, performanceCustom.commissions) &&
        Objects.equals(this.forexFees, performanceCustom.forexFees) &&
        Objects.equals(this.fees, performanceCustom.fees) &&
        Objects.equals(this.rateOfReturn, performanceCustom.rateOfReturn) &&
        Objects.equals(this.returnRateTimeframe, performanceCustom.returnRateTimeframe) &&
        Objects.equals(this.detailedMode, performanceCustom.detailedMode)&&
        Objects.equals(this.additionalProperties, performanceCustom.additionalProperties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(totalEquityTimeframe, contributions, contributionTimeframe, contributionTimeframeCumulative, withdrawalTimeframe, contributionStreak, contributionMonthsContributed, contributionTotalMonths, dividends, dividendIncome, monthlyDividends, badTickers, dividendTimeline, commissions, forexFees, fees, rateOfReturn, returnRateTimeframe, detailedMode, additionalProperties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PerformanceCustom {\n");
    sb.append("    totalEquityTimeframe: ").append(toIndentedString(totalEquityTimeframe)).append("\n");
    sb.append("    contributions: ").append(toIndentedString(contributions)).append("\n");
    sb.append("    contributionTimeframe: ").append(toIndentedString(contributionTimeframe)).append("\n");
    sb.append("    contributionTimeframeCumulative: ").append(toIndentedString(contributionTimeframeCumulative)).append("\n");
    sb.append("    withdrawalTimeframe: ").append(toIndentedString(withdrawalTimeframe)).append("\n");
    sb.append("    contributionStreak: ").append(toIndentedString(contributionStreak)).append("\n");
    sb.append("    contributionMonthsContributed: ").append(toIndentedString(contributionMonthsContributed)).append("\n");
    sb.append("    contributionTotalMonths: ").append(toIndentedString(contributionTotalMonths)).append("\n");
    sb.append("    dividends: ").append(toIndentedString(dividends)).append("\n");
    sb.append("    dividendIncome: ").append(toIndentedString(dividendIncome)).append("\n");
    sb.append("    monthlyDividends: ").append(toIndentedString(monthlyDividends)).append("\n");
    sb.append("    badTickers: ").append(toIndentedString(badTickers)).append("\n");
    sb.append("    dividendTimeline: ").append(toIndentedString(dividendTimeline)).append("\n");
    sb.append("    commissions: ").append(toIndentedString(commissions)).append("\n");
    sb.append("    forexFees: ").append(toIndentedString(forexFees)).append("\n");
    sb.append("    fees: ").append(toIndentedString(fees)).append("\n");
    sb.append("    rateOfReturn: ").append(toIndentedString(rateOfReturn)).append("\n");
    sb.append("    returnRateTimeframe: ").append(toIndentedString(returnRateTimeframe)).append("\n");
    sb.append("    detailedMode: ").append(toIndentedString(detailedMode)).append("\n");
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
    openapiFields.add("totalEquityTimeframe");
    openapiFields.add("contributions");
    openapiFields.add("contributionTimeframe");
    openapiFields.add("contributionTimeframeCumulative");
    openapiFields.add("withdrawalTimeframe");
    openapiFields.add("contributionStreak");
    openapiFields.add("contributionMonthsContributed");
    openapiFields.add("contributionTotalMonths");
    openapiFields.add("dividends");
    openapiFields.add("dividendIncome");
    openapiFields.add("monthlyDividends");
    openapiFields.add("badTickers");
    openapiFields.add("dividendTimeline");
    openapiFields.add("commissions");
    openapiFields.add("forexFees");
    openapiFields.add("fees");
    openapiFields.add("rateOfReturn");
    openapiFields.add("returnRateTimeframe");
    openapiFields.add("detailedMode");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to PerformanceCustom
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!PerformanceCustom.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in PerformanceCustom is not found in the empty JSON string", PerformanceCustom.openapiRequiredFields.toString()));
        }
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("totalEquityTimeframe") != null && !jsonObj.get("totalEquityTimeframe").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `totalEquityTimeframe` to be an array in the JSON string but got `%s`", jsonObj.get("totalEquityTimeframe").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("contributionTimeframe") != null && !jsonObj.get("contributionTimeframe").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `contributionTimeframe` to be an array in the JSON string but got `%s`", jsonObj.get("contributionTimeframe").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("contributionTimeframeCumulative") != null && !jsonObj.get("contributionTimeframeCumulative").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `contributionTimeframeCumulative` to be an array in the JSON string but got `%s`", jsonObj.get("contributionTimeframeCumulative").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("withdrawalTimeframe") != null && !jsonObj.get("withdrawalTimeframe").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `withdrawalTimeframe` to be an array in the JSON string but got `%s`", jsonObj.get("withdrawalTimeframe").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("dividends") != null && !jsonObj.get("dividends").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `dividends` to be an array in the JSON string but got `%s`", jsonObj.get("dividends").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("badTickers") != null && !jsonObj.get("badTickers").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `badTickers` to be an array in the JSON string but got `%s`", jsonObj.get("badTickers").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("dividendTimeline") != null && !jsonObj.get("dividendTimeline").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `dividendTimeline` to be an array in the JSON string but got `%s`", jsonObj.get("dividendTimeline").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("returnRateTimeframe") != null && !jsonObj.get("returnRateTimeframe").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `returnRateTimeframe` to be an array in the JSON string but got `%s`", jsonObj.get("returnRateTimeframe").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!PerformanceCustom.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'PerformanceCustom' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<PerformanceCustom> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(PerformanceCustom.class));

       return (TypeAdapter<T>) new TypeAdapter<PerformanceCustom>() {
           @Override
           public void write(JsonWriter out, PerformanceCustom value) throws IOException {
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
           public PerformanceCustom read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             // store additional fields in the deserialized instance
             PerformanceCustom instance = thisAdapter.fromJsonTree(jsonObj);
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
  * Create an instance of PerformanceCustom given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of PerformanceCustom
  * @throws IOException if the JSON string is invalid with respect to PerformanceCustom
  */
  public static PerformanceCustom fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, PerformanceCustom.class);
  }

 /**
  * Convert an instance of PerformanceCustom to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

