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
    /// Describes a single stock/ETF/crypto/mutual fund position in an account.
    /// </summary>
    [DataContract(Name = "Position")]
    public partial class Position : IEquatable<Position>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="Position" /> class.
        /// </summary>
        /// <param name="symbol">symbol.</param>
        /// <param name="units">The number of shares of the position. This can be fractional or integer units..</param>
        /// <param name="price">Last known market price for the symbol. The freshness of this price depends on the brokerage. Some brokerages provide real-time prices, while others provide delayed prices. It is recommended that you rely on your own third-party market data provider for most up to date prices..</param>
        /// <param name="openPnl">The profit or loss on the position since it was opened. This is calculated as the difference between the current market value of the position and the total cost of the position. It is recommended to calculate this value using the average purchase price and the current market price yourself, instead of relying on this field..</param>
        /// <param name="averagePurchasePrice">Cost basis _per share_ of this position..</param>
        /// <param name="fractionalUnits">Deprecated, use the &#x60;units&#x60; field for both fractional and integer units going forward.</param>
        public Position(PositionSymbol symbol = default(PositionSymbol), double? units = default(double?), double? price = default(double?), double? openPnl = default(double?), double? averagePurchasePrice = default(double?), double? fractionalUnits = default(double?)) : base()
        {
            this.Symbol = symbol;
            this.Units = units;
            this.Price = price;
            this.OpenPnl = openPnl;
            this.AveragePurchasePrice = averagePurchasePrice;
            this.FractionalUnits = fractionalUnits;
            this.AdditionalProperties = new Dictionary<string, object>();
        }

        /// <summary>
        /// Gets or Sets Symbol
        /// </summary>
        [DataMember(Name = "symbol", EmitDefaultValue = false)]
        public PositionSymbol Symbol { get; set; }

        /// <summary>
        /// The number of shares of the position. This can be fractional or integer units.
        /// </summary>
        /// <value>The number of shares of the position. This can be fractional or integer units.</value>
        [DataMember(Name = "units", EmitDefaultValue = true)]
        public double? Units { get; set; }

        /// <summary>
        /// Last known market price for the symbol. The freshness of this price depends on the brokerage. Some brokerages provide real-time prices, while others provide delayed prices. It is recommended that you rely on your own third-party market data provider for most up to date prices.
        /// </summary>
        /// <value>Last known market price for the symbol. The freshness of this price depends on the brokerage. Some brokerages provide real-time prices, while others provide delayed prices. It is recommended that you rely on your own third-party market data provider for most up to date prices.</value>
        [DataMember(Name = "price", EmitDefaultValue = true)]
        public double? Price { get; set; }

        /// <summary>
        /// The profit or loss on the position since it was opened. This is calculated as the difference between the current market value of the position and the total cost of the position. It is recommended to calculate this value using the average purchase price and the current market price yourself, instead of relying on this field.
        /// </summary>
        /// <value>The profit or loss on the position since it was opened. This is calculated as the difference between the current market value of the position and the total cost of the position. It is recommended to calculate this value using the average purchase price and the current market price yourself, instead of relying on this field.</value>
        [DataMember(Name = "open_pnl", EmitDefaultValue = true)]
        public double? OpenPnl { get; set; }

        /// <summary>
        /// Cost basis _per share_ of this position.
        /// </summary>
        /// <value>Cost basis _per share_ of this position.</value>
        [DataMember(Name = "average_purchase_price", EmitDefaultValue = true)]
        public double? AveragePurchasePrice { get; set; }

        /// <summary>
        /// Deprecated, use the &#x60;units&#x60; field for both fractional and integer units going forward
        /// </summary>
        /// <value>Deprecated, use the &#x60;units&#x60; field for both fractional and integer units going forward</value>
        [DataMember(Name = "fractional_units", EmitDefaultValue = true)]
        [Obsolete]
        public double? FractionalUnits { get; set; }

        /// <summary>
        /// Gets or Sets additional properties
        /// </summary>
        [JsonExtensionData]
        public IDictionary<string, object> AdditionalProperties { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class Position {\n");
            sb.Append("  ").Append(base.ToString().Replace("\n", "\n  ")).Append("\n");
            sb.Append("  Symbol: ").Append(Symbol).Append("\n");
            sb.Append("  Units: ").Append(Units).Append("\n");
            sb.Append("  Price: ").Append(Price).Append("\n");
            sb.Append("  OpenPnl: ").Append(OpenPnl).Append("\n");
            sb.Append("  AveragePurchasePrice: ").Append(AveragePurchasePrice).Append("\n");
            sb.Append("  FractionalUnits: ").Append(FractionalUnits).Append("\n");
            sb.Append("  AdditionalProperties: ").Append(AdditionalProperties).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public string ToJson()
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
            return this.Equals(input as Position);
        }

        /// <summary>
        /// Returns true if Position instances are equal
        /// </summary>
        /// <param name="input">Instance of Position to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(Position input)
        {
            if (input == null)
            {
                return false;
            }
            return base.Equals(input) && 
                (
                    this.Symbol == input.Symbol ||
                    (this.Symbol != null &&
                    this.Symbol.Equals(input.Symbol))
                ) && base.Equals(input) && 
                (
                    this.Units == input.Units ||
                    (this.Units != null &&
                    this.Units.Equals(input.Units))
                ) && base.Equals(input) && 
                (
                    this.Price == input.Price ||
                    (this.Price != null &&
                    this.Price.Equals(input.Price))
                ) && base.Equals(input) && 
                (
                    this.OpenPnl == input.OpenPnl ||
                    (this.OpenPnl != null &&
                    this.OpenPnl.Equals(input.OpenPnl))
                ) && base.Equals(input) && 
                (
                    this.AveragePurchasePrice == input.AveragePurchasePrice ||
                    (this.AveragePurchasePrice != null &&
                    this.AveragePurchasePrice.Equals(input.AveragePurchasePrice))
                ) && base.Equals(input) && 
                (
                    this.FractionalUnits == input.FractionalUnits ||
                    (this.FractionalUnits != null &&
                    this.FractionalUnits.Equals(input.FractionalUnits))
                )
                && (this.AdditionalProperties.Count == input.AdditionalProperties.Count && !this.AdditionalProperties.Except(input.AdditionalProperties).Any());
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = base.GetHashCode();
                if (this.Symbol != null)
                {
                    hashCode = (hashCode * 59) + this.Symbol.GetHashCode();
                }
                if (this.Units != null)
                {
                    hashCode = (hashCode * 59) + this.Units.GetHashCode();
                }
                if (this.Price != null)
                {
                    hashCode = (hashCode * 59) + this.Price.GetHashCode();
                }
                if (this.OpenPnl != null)
                {
                    hashCode = (hashCode * 59) + this.OpenPnl.GetHashCode();
                }
                if (this.AveragePurchasePrice != null)
                {
                    hashCode = (hashCode * 59) + this.AveragePurchasePrice.GetHashCode();
                }
                if (this.FractionalUnits != null)
                {
                    hashCode = (hashCode * 59) + this.FractionalUnits.GetHashCode();
                }
                if (this.AdditionalProperties != null)
                {
                    hashCode = (hashCode * 59) + this.AdditionalProperties.GetHashCode();
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
