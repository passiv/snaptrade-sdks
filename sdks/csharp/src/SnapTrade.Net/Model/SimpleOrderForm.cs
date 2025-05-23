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
    /// SimpleOrderForm
    /// </summary>
    [DataContract(Name = "SimpleOrderForm")]
    public partial class SimpleOrderForm : IEquatable<SimpleOrderForm>, IValidatableObject
    {

        /// <summary>
        /// Gets or Sets Side
        /// </summary>
        [DataMember(Name = "side", IsRequired = true, EmitDefaultValue = true)]
        public ActionStrict Side { get; set; }
        /// <summary>
        /// The type of order to place.
        /// </summary>
        /// <value>The type of order to place.</value>
        [JsonConverter(typeof(StringEnumConverter))]
        public enum TypeEnum
        {
            /// <summary>
            /// Enum MARKET for value: MARKET
            /// </summary>
            [EnumMember(Value = "MARKET")]
            MARKET = 1,

            /// <summary>
            /// Enum LIMIT for value: LIMIT
            /// </summary>
            [EnumMember(Value = "LIMIT")]
            LIMIT = 2,

            /// <summary>
            /// Enum STOPLOSSMARKET for value: STOP_LOSS_MARKET
            /// </summary>
            [EnumMember(Value = "STOP_LOSS_MARKET")]
            STOPLOSSMARKET = 3,

            /// <summary>
            /// Enum STOPLOSSLIMIT for value: STOP_LOSS_LIMIT
            /// </summary>
            [EnumMember(Value = "STOP_LOSS_LIMIT")]
            STOPLOSSLIMIT = 4,

            /// <summary>
            /// Enum TAKEPROFITMARKET for value: TAKE_PROFIT_MARKET
            /// </summary>
            [EnumMember(Value = "TAKE_PROFIT_MARKET")]
            TAKEPROFITMARKET = 5,

            /// <summary>
            /// Enum TAKEPROFITLIMIT for value: TAKE_PROFIT_LIMIT
            /// </summary>
            [EnumMember(Value = "TAKE_PROFIT_LIMIT")]
            TAKEPROFITLIMIT = 6

        }


        /// <summary>
        /// The type of order to place.
        /// </summary>
        /// <value>The type of order to place.</value>
        [DataMember(Name = "type", IsRequired = true, EmitDefaultValue = true)]
        public TypeEnum Type { get; set; }
        /// <summary>
        /// The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - &#x60;GTC&#x60; - Good Til Canceled. The order is valid until it is executed or canceled.   - &#x60;FOK&#x60; - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - &#x60;IOC&#x60; - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - &#x60;GTD&#x60; - Good Til Date. The order is valid until the specified date. 
        /// </summary>
        /// <value>The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - &#x60;GTC&#x60; - Good Til Canceled. The order is valid until it is executed or canceled.   - &#x60;FOK&#x60; - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - &#x60;IOC&#x60; - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - &#x60;GTD&#x60; - Good Til Date. The order is valid until the specified date. </value>
        [JsonConverter(typeof(StringEnumConverter))]
        public enum TimeInForceEnum
        {
            /// <summary>
            /// Enum GTC for value: GTC
            /// </summary>
            [EnumMember(Value = "GTC")]
            GTC = 1,

            /// <summary>
            /// Enum FOK for value: FOK
            /// </summary>
            [EnumMember(Value = "FOK")]
            FOK = 2,

            /// <summary>
            /// Enum IOC for value: IOC
            /// </summary>
            [EnumMember(Value = "IOC")]
            IOC = 3,

            /// <summary>
            /// Enum GTD for value: GTD
            /// </summary>
            [EnumMember(Value = "GTD")]
            GTD = 4

        }


        /// <summary>
        /// The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - &#x60;GTC&#x60; - Good Til Canceled. The order is valid until it is executed or canceled.   - &#x60;FOK&#x60; - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - &#x60;IOC&#x60; - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - &#x60;GTD&#x60; - Good Til Date. The order is valid until the specified date. 
        /// </summary>
        /// <value>The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - &#x60;GTC&#x60; - Good Til Canceled. The order is valid until it is executed or canceled.   - &#x60;FOK&#x60; - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - &#x60;IOC&#x60; - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - &#x60;GTD&#x60; - Good Til Date. The order is valid until the specified date. </value>
        [DataMember(Name = "time_in_force", IsRequired = true, EmitDefaultValue = true)]
        public TimeInForceEnum TimeInForce { get; set; }
        /// <summary>
        /// Initializes a new instance of the <see cref="SimpleOrderForm" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected SimpleOrderForm() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="SimpleOrderForm" /> class.
        /// </summary>
        /// <param name="instrument">instrument (required).</param>
        /// <param name="side">side (required).</param>
        /// <param name="type">The type of order to place. (required).</param>
        /// <param name="timeInForce">The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - &#x60;GTC&#x60; - Good Til Canceled. The order is valid until it is executed or canceled.   - &#x60;FOK&#x60; - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - &#x60;IOC&#x60; - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - &#x60;GTD&#x60; - Good Til Date. The order is valid until the specified date.  (required).</param>
        /// <param name="amount">The amount of the base currency to buy or sell. (required).</param>
        /// <param name="limitPrice">The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT..</param>
        /// <param name="stopPrice">The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT..</param>
        /// <param name="postOnly">Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees. .</param>
        /// <param name="expirationDate">The expiration date of the order. Required if the time_in_force is GTD..</param>
        public SimpleOrderForm(TradingInstrument instrument = default(TradingInstrument), ActionStrict side = default(ActionStrict), TypeEnum type = default(TypeEnum), TimeInForceEnum timeInForce = default(TimeInForceEnum), decimal amount = default(decimal), decimal limitPrice = default(decimal), decimal stopPrice = default(decimal), bool postOnly = default(bool), DateTime expirationDate = default(DateTime))
        {
            // to ensure "instrument" is required (not null)
            if (instrument == null)
            {
                throw new ArgumentNullException("instrument is a required property for SimpleOrderForm and cannot be null");
            }
            this.Instrument = instrument;
            this.Side = side;
            this.Type = type;
            this.TimeInForce = timeInForce;
            this.Amount = amount;
            this.LimitPrice = limitPrice;
            this.StopPrice = stopPrice;
            this.PostOnly = postOnly;
            this.ExpirationDate = expirationDate;
        }

        /// <summary>
        /// Gets or Sets Instrument
        /// </summary>
        [DataMember(Name = "instrument", IsRequired = true, EmitDefaultValue = true)]
        public TradingInstrument Instrument { get; set; }

        /// <summary>
        /// The amount of the base currency to buy or sell.
        /// </summary>
        /// <value>The amount of the base currency to buy or sell.</value>
        [DataMember(Name = "amount", IsRequired = true, EmitDefaultValue = true)]
        public decimal Amount { get; set; }

        /// <summary>
        /// The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.
        /// </summary>
        /// <value>The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.</value>
        [DataMember(Name = "limit_price", EmitDefaultValue = false)]
        public decimal LimitPrice { get; set; }

        /// <summary>
        /// The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.
        /// </summary>
        /// <value>The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.</value>
        [DataMember(Name = "stop_price", EmitDefaultValue = false)]
        public decimal StopPrice { get; set; }

        /// <summary>
        /// Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees. 
        /// </summary>
        /// <value>Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees. </value>
        [DataMember(Name = "post_only", EmitDefaultValue = true)]
        public bool PostOnly { get; set; }

        /// <summary>
        /// The expiration date of the order. Required if the time_in_force is GTD.
        /// </summary>
        /// <value>The expiration date of the order. Required if the time_in_force is GTD.</value>
        [DataMember(Name = "expiration_date", EmitDefaultValue = false)]
        public DateTime ExpirationDate { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SimpleOrderForm {\n");
            sb.Append("  Instrument: ").Append(Instrument).Append("\n");
            sb.Append("  Side: ").Append(Side).Append("\n");
            sb.Append("  Type: ").Append(Type).Append("\n");
            sb.Append("  TimeInForce: ").Append(TimeInForce).Append("\n");
            sb.Append("  Amount: ").Append(Amount).Append("\n");
            sb.Append("  LimitPrice: ").Append(LimitPrice).Append("\n");
            sb.Append("  StopPrice: ").Append(StopPrice).Append("\n");
            sb.Append("  PostOnly: ").Append(PostOnly).Append("\n");
            sb.Append("  ExpirationDate: ").Append(ExpirationDate).Append("\n");
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
            return this.Equals(input as SimpleOrderForm);
        }

        /// <summary>
        /// Returns true if SimpleOrderForm instances are equal
        /// </summary>
        /// <param name="input">Instance of SimpleOrderForm to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(SimpleOrderForm input)
        {
            if (input == null)
            {
                return false;
            }
            return 
                (
                    this.Instrument == input.Instrument ||
                    (this.Instrument != null &&
                    this.Instrument.Equals(input.Instrument))
                ) && 
                (
                    this.Side == input.Side ||
                    this.Side.Equals(input.Side)
                ) && 
                (
                    this.Type == input.Type ||
                    this.Type.Equals(input.Type)
                ) && 
                (
                    this.TimeInForce == input.TimeInForce ||
                    this.TimeInForce.Equals(input.TimeInForce)
                ) && 
                (
                    this.Amount == input.Amount ||
                    this.Amount.Equals(input.Amount)
                ) && 
                (
                    this.LimitPrice == input.LimitPrice ||
                    this.LimitPrice.Equals(input.LimitPrice)
                ) && 
                (
                    this.StopPrice == input.StopPrice ||
                    this.StopPrice.Equals(input.StopPrice)
                ) && 
                (
                    this.PostOnly == input.PostOnly ||
                    this.PostOnly.Equals(input.PostOnly)
                ) && 
                (
                    this.ExpirationDate == input.ExpirationDate ||
                    (this.ExpirationDate != null &&
                    this.ExpirationDate.Equals(input.ExpirationDate))
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
                if (this.Instrument != null)
                {
                    hashCode = (hashCode * 59) + this.Instrument.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.Side.GetHashCode();
                hashCode = (hashCode * 59) + this.Type.GetHashCode();
                hashCode = (hashCode * 59) + this.TimeInForce.GetHashCode();
                hashCode = (hashCode * 59) + this.Amount.GetHashCode();
                hashCode = (hashCode * 59) + this.LimitPrice.GetHashCode();
                hashCode = (hashCode * 59) + this.StopPrice.GetHashCode();
                hashCode = (hashCode * 59) + this.PostOnly.GetHashCode();
                if (this.ExpirationDate != null)
                {
                    hashCode = (hashCode * 59) + this.ExpirationDate.GetHashCode();
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
