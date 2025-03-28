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
    /// A cryptocurrency pair instrument.
    /// </summary>
    [DataContract(Name = "CryptocurrencyPair")]
    public partial class CryptocurrencyPair : IEquatable<CryptocurrencyPair>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="CryptocurrencyPair" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected CryptocurrencyPair()
        {
            this.AdditionalProperties = new Dictionary<string, object>();
        }
        /// <summary>
        /// Initializes a new instance of the <see cref="CryptocurrencyPair" /> class.
        /// </summary>
        /// <param name="symbol">Cryptocurrency pair instrument instrument symbol.</param>
        /// <param name="_base">The base currency of a pair (e.g., \&quot;BTC\&quot; in BTC/USD). Either fiat or cryptocurrency symbol, for fiat use ISO-4217 codes.  (required).</param>
        /// <param name="quote">The quote currency of a pair (e.g., \&quot;USD\&quot; in BTC/USD). Either fiat or cryptocurrency symbol, for fiat use ISO-4217 codes.  (required).</param>
        public CryptocurrencyPair(string symbol = default(string), string _base = default(string), string quote = default(string)) : base()
        {
            // to ensure "_base" is required (not null)
            if (_base == null)
            {
                throw new ArgumentNullException("_base is a required property for CryptocurrencyPair and cannot be null");
            }
            this.Base = _base;
            // to ensure "quote" is required (not null)
            if (quote == null)
            {
                throw new ArgumentNullException("quote is a required property for CryptocurrencyPair and cannot be null");
            }
            this.Quote = quote;
            this.Symbol = symbol;
            this.AdditionalProperties = new Dictionary<string, object>();
        }

        /// <summary>
        /// Cryptocurrency pair instrument instrument symbol
        /// </summary>
        /// <value>Cryptocurrency pair instrument instrument symbol</value>
        [DataMember(Name = "symbol", EmitDefaultValue = false)]
        public string Symbol { get; set; }

        /// <summary>
        /// The base currency of a pair (e.g., \&quot;BTC\&quot; in BTC/USD). Either fiat or cryptocurrency symbol, for fiat use ISO-4217 codes. 
        /// </summary>
        /// <value>The base currency of a pair (e.g., \&quot;BTC\&quot; in BTC/USD). Either fiat or cryptocurrency symbol, for fiat use ISO-4217 codes. </value>
        [DataMember(Name = "base", IsRequired = true, EmitDefaultValue = true)]
        public string Base { get; set; }

        /// <summary>
        /// The quote currency of a pair (e.g., \&quot;USD\&quot; in BTC/USD). Either fiat or cryptocurrency symbol, for fiat use ISO-4217 codes. 
        /// </summary>
        /// <value>The quote currency of a pair (e.g., \&quot;USD\&quot; in BTC/USD). Either fiat or cryptocurrency symbol, for fiat use ISO-4217 codes. </value>
        [DataMember(Name = "quote", IsRequired = true, EmitDefaultValue = true)]
        public string Quote { get; set; }

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
            sb.Append("class CryptocurrencyPair {\n");
            sb.Append("  ").Append(base.ToString().Replace("\n", "\n  ")).Append("\n");
            sb.Append("  Symbol: ").Append(Symbol).Append("\n");
            sb.Append("  Base: ").Append(Base).Append("\n");
            sb.Append("  Quote: ").Append(Quote).Append("\n");
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
            return this.Equals(input as CryptocurrencyPair);
        }

        /// <summary>
        /// Returns true if CryptocurrencyPair instances are equal
        /// </summary>
        /// <param name="input">Instance of CryptocurrencyPair to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(CryptocurrencyPair input)
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
                    this.Base == input.Base ||
                    (this.Base != null &&
                    this.Base.Equals(input.Base))
                ) && base.Equals(input) && 
                (
                    this.Quote == input.Quote ||
                    (this.Quote != null &&
                    this.Quote.Equals(input.Quote))
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
                if (this.Base != null)
                {
                    hashCode = (hashCode * 59) + this.Base.GetHashCode();
                }
                if (this.Quote != null)
                {
                    hashCode = (hashCode * 59) + this.Quote.GetHashCode();
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
