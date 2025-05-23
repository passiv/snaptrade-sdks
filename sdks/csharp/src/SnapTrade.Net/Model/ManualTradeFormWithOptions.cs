/*
 * SnapTrade
 *
 * Connect brokerage accounts to your app for live positions and trading
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: api@snaptrade.com
 * Generated by: https://konfigthis.com
 */


using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = SnapTrade.Net.Client.OpenAPIDateConverter;

namespace SnapTrade.Net.Model
{
    /// <summary>
    /// Inputs for placing an order with the brokerage.
    /// </summary>
    [DataContract(Name = "ManualTradeFormWithOptions")]
    public partial class ManualTradeFormWithOptions : IEquatable<ManualTradeFormWithOptions>, IValidatableObject
    {

        /// <summary>
        /// Gets or Sets _Action
        /// </summary>
        [DataMember(Name = "action", IsRequired = true, EmitDefaultValue = true)]
        public ActionStrictWithOptions _Action { get; set; }

        /// <summary>
        /// Gets or Sets OrderType
        /// </summary>
        [DataMember(Name = "order_type", IsRequired = true, EmitDefaultValue = true)]
        public OrderTypeStrict OrderType { get; set; }

        /// <summary>
        /// Gets or Sets TimeInForce
        /// </summary>
        [DataMember(Name = "time_in_force", IsRequired = true, EmitDefaultValue = true)]
        public TimeInForceStrict TimeInForce { get; set; }
        /// <summary>
        /// Initializes a new instance of the <see cref="ManualTradeFormWithOptions" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected ManualTradeFormWithOptions() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="ManualTradeFormWithOptions" /> class.
        /// </summary>
        /// <param name="accountId">Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. (required).</param>
        /// <param name="action">action (required).</param>
        /// <param name="universalSymbolId">Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls..</param>
        /// <param name="symbol">The security&#39;s trading ticker symbol. This currently supports stock symbols and Options symbols in the 21 character OCC format. For example &#x60;AAPL  131124C00240000&#x60; represents a call option on AAPL expiring on 2024-11-13 with a strike price of $240. For more information on the OCC format, see [here](https://en.wikipedia.org/wiki/Option_symbol#OCC_format). If &#39;symbol&#39; is provided, then &#39;universal_symbol_id&#39; must be &#39;null&#39;..</param>
        /// <param name="orderType">orderType (required).</param>
        /// <param name="timeInForce">timeInForce (required).</param>
        /// <param name="price">The limit price for &#x60;Limit&#x60; and &#x60;StopLimit&#x60; orders..</param>
        /// <param name="stop">The price at which a stop order is triggered for &#x60;Stop&#x60; and &#x60;StopLimit&#x60; orders..</param>
        /// <param name="units">For Equity orders, this represents the number of shares for the order. This can be a decimal for fractional orders. Must be &#x60;null&#x60; if &#x60;notional_value&#x60; is provided. If placing an Option order, this field represents the number of contracts to buy or sell. (e.g., 1 contract &#x3D; 100 shares)..</param>
        /// <param name="notionalValue">notionalValue.</param>
        public ManualTradeFormWithOptions(string accountId = default(string), ActionStrictWithOptions action = default(ActionStrictWithOptions), string universalSymbolId = default(string), string symbol = default(string), OrderTypeStrict orderType = default(OrderTypeStrict), TimeInForceStrict timeInForce = default(TimeInForceStrict), double? price = default(double?), double? stop = default(double?), double? units = default(double?), NotionalValueNullable notionalValue = default(NotionalValueNullable))
        {
            // to ensure "accountId" is required (not null)
            if (accountId == null)
            {
                throw new ArgumentNullException("accountId is a required property for ManualTradeFormWithOptions and cannot be null");
            }
            this.AccountId = accountId;
            this._Action = action;
            this.OrderType = orderType;
            this.TimeInForce = timeInForce;
            this.UniversalSymbolId = universalSymbolId;
            this.Symbol = symbol;
            this.Price = price;
            this.Stop = stop;
            this.Units = units;
            this.NotionalValue = notionalValue;
        }

        /// <summary>
        /// Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
        /// </summary>
        /// <value>Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.</value>
        [DataMember(Name = "account_id", IsRequired = true, EmitDefaultValue = true)]
        public string AccountId { get; set; }

        /// <summary>
        /// Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.
        /// </summary>
        /// <value>Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.</value>
        [DataMember(Name = "universal_symbol_id", EmitDefaultValue = true)]
        public string UniversalSymbolId { get; set; }

        /// <summary>
        /// The security&#39;s trading ticker symbol. This currently supports stock symbols and Options symbols in the 21 character OCC format. For example &#x60;AAPL  131124C00240000&#x60; represents a call option on AAPL expiring on 2024-11-13 with a strike price of $240. For more information on the OCC format, see [here](https://en.wikipedia.org/wiki/Option_symbol#OCC_format). If &#39;symbol&#39; is provided, then &#39;universal_symbol_id&#39; must be &#39;null&#39;.
        /// </summary>
        /// <value>The security&#39;s trading ticker symbol. This currently supports stock symbols and Options symbols in the 21 character OCC format. For example &#x60;AAPL  131124C00240000&#x60; represents a call option on AAPL expiring on 2024-11-13 with a strike price of $240. For more information on the OCC format, see [here](https://en.wikipedia.org/wiki/Option_symbol#OCC_format). If &#39;symbol&#39; is provided, then &#39;universal_symbol_id&#39; must be &#39;null&#39;.</value>
        [DataMember(Name = "symbol", EmitDefaultValue = true)]
        public string Symbol { get; set; }

        /// <summary>
        /// The limit price for &#x60;Limit&#x60; and &#x60;StopLimit&#x60; orders.
        /// </summary>
        /// <value>The limit price for &#x60;Limit&#x60; and &#x60;StopLimit&#x60; orders.</value>
        [DataMember(Name = "price", EmitDefaultValue = true)]
        public double? Price { get; set; }

        /// <summary>
        /// The price at which a stop order is triggered for &#x60;Stop&#x60; and &#x60;StopLimit&#x60; orders.
        /// </summary>
        /// <value>The price at which a stop order is triggered for &#x60;Stop&#x60; and &#x60;StopLimit&#x60; orders.</value>
        [DataMember(Name = "stop", EmitDefaultValue = true)]
        public double? Stop { get; set; }

        /// <summary>
        /// For Equity orders, this represents the number of shares for the order. This can be a decimal for fractional orders. Must be &#x60;null&#x60; if &#x60;notional_value&#x60; is provided. If placing an Option order, this field represents the number of contracts to buy or sell. (e.g., 1 contract &#x3D; 100 shares).
        /// </summary>
        /// <value>For Equity orders, this represents the number of shares for the order. This can be a decimal for fractional orders. Must be &#x60;null&#x60; if &#x60;notional_value&#x60; is provided. If placing an Option order, this field represents the number of contracts to buy or sell. (e.g., 1 contract &#x3D; 100 shares).</value>
        [DataMember(Name = "units", EmitDefaultValue = true)]
        public double? Units { get; set; }

        /// <summary>
        /// Gets or Sets NotionalValue
        /// </summary>
        [DataMember(Name = "notional_value", EmitDefaultValue = true)]
        public NotionalValueNullable NotionalValue { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class ManualTradeFormWithOptions {\n");
            sb.Append("  AccountId: ").Append(AccountId).Append("\n");
            sb.Append("  _Action: ").Append(_Action).Append("\n");
            sb.Append("  UniversalSymbolId: ").Append(UniversalSymbolId).Append("\n");
            sb.Append("  Symbol: ").Append(Symbol).Append("\n");
            sb.Append("  OrderType: ").Append(OrderType).Append("\n");
            sb.Append("  TimeInForce: ").Append(TimeInForce).Append("\n");
            sb.Append("  Price: ").Append(Price).Append("\n");
            sb.Append("  Stop: ").Append(Stop).Append("\n");
            sb.Append("  Units: ").Append(Units).Append("\n");
            sb.Append("  NotionalValue: ").Append(NotionalValue).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as ManualTradeFormWithOptions);
        }

        /// <summary>
        /// Returns true if ManualTradeFormWithOptions instances are equal
        /// </summary>
        /// <param name="input">Instance of ManualTradeFormWithOptions to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(ManualTradeFormWithOptions input)
        {
            if (input == null)
            {
                return false;
            }
            return 
                (
                    this.AccountId == input.AccountId ||
                    (this.AccountId != null &&
                    this.AccountId.Equals(input.AccountId))
                ) && 
                (
                    this._Action == input._Action ||
                    this._Action.Equals(input._Action)
                ) && 
                (
                    this.UniversalSymbolId == input.UniversalSymbolId ||
                    (this.UniversalSymbolId != null &&
                    this.UniversalSymbolId.Equals(input.UniversalSymbolId))
                ) && 
                (
                    this.Symbol == input.Symbol ||
                    (this.Symbol != null &&
                    this.Symbol.Equals(input.Symbol))
                ) && 
                (
                    this.OrderType == input.OrderType ||
                    this.OrderType.Equals(input.OrderType)
                ) && 
                (
                    this.TimeInForce == input.TimeInForce ||
                    this.TimeInForce.Equals(input.TimeInForce)
                ) && 
                (
                    this.Price == input.Price ||
                    (this.Price != null &&
                    this.Price.Equals(input.Price))
                ) && 
                (
                    this.Stop == input.Stop ||
                    (this.Stop != null &&
                    this.Stop.Equals(input.Stop))
                ) && 
                (
                    this.Units == input.Units ||
                    (this.Units != null &&
                    this.Units.Equals(input.Units))
                ) && 
                (
                    this.NotionalValue == input.NotionalValue ||
                    (this.NotionalValue != null &&
                    this.NotionalValue.Equals(input.NotionalValue))
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.AccountId != null)
                {
                    hashCode = (hashCode * 59) + this.AccountId.GetHashCode();
                }
                hashCode = (hashCode * 59) + this._Action.GetHashCode();
                if (this.UniversalSymbolId != null)
                {
                    hashCode = (hashCode * 59) + this.UniversalSymbolId.GetHashCode();
                }
                if (this.Symbol != null)
                {
                    hashCode = (hashCode * 59) + this.Symbol.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.OrderType.GetHashCode();
                hashCode = (hashCode * 59) + this.TimeInForce.GetHashCode();
                if (this.Price != null)
                {
                    hashCode = (hashCode * 59) + this.Price.GetHashCode();
                }
                if (this.Stop != null)
                {
                    hashCode = (hashCode * 59) + this.Stop.GetHashCode();
                }
                if (this.Units != null)
                {
                    hashCode = (hashCode * 59) + this.Units.GetHashCode();
                }
                if (this.NotionalValue != null)
                {
                    hashCode = (hashCode * 59) + this.NotionalValue.GetHashCode();
                }
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        public IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
