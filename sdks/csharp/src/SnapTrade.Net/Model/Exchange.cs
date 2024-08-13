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
    /// Describes a single stock or crypto exchange.
    /// </summary>
    [DataContract(Name = "Exchange")]
    public partial class Exchange : IEquatable<Exchange>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="Exchange" /> class.
        /// </summary>
        /// <param name="id">Unique ID for the exchange in SnapTrade..</param>
        /// <param name="code">A short name for the exchange. For standardized exchange code, please us the &#x60;mic_code&#x60; field..</param>
        /// <param name="micCode">The [Market Identifier Code](https://en.wikipedia.org/wiki/Market_Identifier_Code) (MIC) for the exchange..</param>
        /// <param name="name">The full name of the exchange..</param>
        /// <param name="timezone">The timezone for the trading hours (&#x60;start_time&#x60; and &#x60;close_time&#x60;) of the exchange..</param>
        /// <param name="startTime">The time when the exchange opens for trading..</param>
        /// <param name="closeTime">The time when the exchange closes for trading..</param>
        /// <param name="suffix">The suffix to be appended to the symbol when trading on this exchange. For example, the suffix for the Toronto Stock Exchange is &#x60;.TO&#x60;. See &#x60;UniversalSymbol-&gt;symbol&#x60; and &#x60;UniversalSymbol-&gt;raw_symbol&#x60; for more detail..</param>
        public Exchange(string id = default(string), string code = default(string), string micCode = default(string), string name = default(string), string timezone = default(string), string startTime = default(string), string closeTime = default(string), string suffix = default(string)) : base()
        {
            this.Id = id;
            this.Code = code;
            this.MicCode = micCode;
            this.Name = name;
            this.Timezone = timezone;
            this.StartTime = startTime;
            this.CloseTime = closeTime;
            this.Suffix = suffix;
            this.AdditionalProperties = new Dictionary<string, object>();
        }

        /// <summary>
        /// Unique ID for the exchange in SnapTrade.
        /// </summary>
        /// <value>Unique ID for the exchange in SnapTrade.</value>
        [DataMember(Name = "id", EmitDefaultValue = false)]
        public string Id { get; set; }

        /// <summary>
        /// A short name for the exchange. For standardized exchange code, please us the &#x60;mic_code&#x60; field.
        /// </summary>
        /// <value>A short name for the exchange. For standardized exchange code, please us the &#x60;mic_code&#x60; field.</value>
        [DataMember(Name = "code", EmitDefaultValue = false)]
        public string Code { get; set; }

        /// <summary>
        /// The [Market Identifier Code](https://en.wikipedia.org/wiki/Market_Identifier_Code) (MIC) for the exchange.
        /// </summary>
        /// <value>The [Market Identifier Code](https://en.wikipedia.org/wiki/Market_Identifier_Code) (MIC) for the exchange.</value>
        [DataMember(Name = "mic_code", EmitDefaultValue = false)]
        public string MicCode { get; set; }

        /// <summary>
        /// The full name of the exchange.
        /// </summary>
        /// <value>The full name of the exchange.</value>
        [DataMember(Name = "name", EmitDefaultValue = false)]
        public string Name { get; set; }

        /// <summary>
        /// The timezone for the trading hours (&#x60;start_time&#x60; and &#x60;close_time&#x60;) of the exchange.
        /// </summary>
        /// <value>The timezone for the trading hours (&#x60;start_time&#x60; and &#x60;close_time&#x60;) of the exchange.</value>
        [DataMember(Name = "timezone", EmitDefaultValue = false)]
        public string Timezone { get; set; }

        /// <summary>
        /// The time when the exchange opens for trading.
        /// </summary>
        /// <value>The time when the exchange opens for trading.</value>
        [DataMember(Name = "start_time", EmitDefaultValue = false)]
        public string StartTime { get; set; }

        /// <summary>
        /// The time when the exchange closes for trading.
        /// </summary>
        /// <value>The time when the exchange closes for trading.</value>
        [DataMember(Name = "close_time", EmitDefaultValue = false)]
        public string CloseTime { get; set; }

        /// <summary>
        /// The suffix to be appended to the symbol when trading on this exchange. For example, the suffix for the Toronto Stock Exchange is &#x60;.TO&#x60;. See &#x60;UniversalSymbol-&gt;symbol&#x60; and &#x60;UniversalSymbol-&gt;raw_symbol&#x60; for more detail.
        /// </summary>
        /// <value>The suffix to be appended to the symbol when trading on this exchange. For example, the suffix for the Toronto Stock Exchange is &#x60;.TO&#x60;. See &#x60;UniversalSymbol-&gt;symbol&#x60; and &#x60;UniversalSymbol-&gt;raw_symbol&#x60; for more detail.</value>
        [DataMember(Name = "suffix", EmitDefaultValue = true)]
        public string Suffix { get; set; }

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
            sb.Append("class Exchange {\n");
            sb.Append("  ").Append(base.ToString().Replace("\n", "\n  ")).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Code: ").Append(Code).Append("\n");
            sb.Append("  MicCode: ").Append(MicCode).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Timezone: ").Append(Timezone).Append("\n");
            sb.Append("  StartTime: ").Append(StartTime).Append("\n");
            sb.Append("  CloseTime: ").Append(CloseTime).Append("\n");
            sb.Append("  Suffix: ").Append(Suffix).Append("\n");
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
            return this.Equals(input as Exchange);
        }

        /// <summary>
        /// Returns true if Exchange instances are equal
        /// </summary>
        /// <param name="input">Instance of Exchange to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(Exchange input)
        {
            if (input == null)
            {
                return false;
            }
            return base.Equals(input) && 
                (
                    this.Id == input.Id ||
                    (this.Id != null &&
                    this.Id.Equals(input.Id))
                ) && base.Equals(input) && 
                (
                    this.Code == input.Code ||
                    (this.Code != null &&
                    this.Code.Equals(input.Code))
                ) && base.Equals(input) && 
                (
                    this.MicCode == input.MicCode ||
                    (this.MicCode != null &&
                    this.MicCode.Equals(input.MicCode))
                ) && base.Equals(input) && 
                (
                    this.Name == input.Name ||
                    (this.Name != null &&
                    this.Name.Equals(input.Name))
                ) && base.Equals(input) && 
                (
                    this.Timezone == input.Timezone ||
                    (this.Timezone != null &&
                    this.Timezone.Equals(input.Timezone))
                ) && base.Equals(input) && 
                (
                    this.StartTime == input.StartTime ||
                    (this.StartTime != null &&
                    this.StartTime.Equals(input.StartTime))
                ) && base.Equals(input) && 
                (
                    this.CloseTime == input.CloseTime ||
                    (this.CloseTime != null &&
                    this.CloseTime.Equals(input.CloseTime))
                ) && base.Equals(input) && 
                (
                    this.Suffix == input.Suffix ||
                    (this.Suffix != null &&
                    this.Suffix.Equals(input.Suffix))
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
                if (this.Id != null)
                {
                    hashCode = (hashCode * 59) + this.Id.GetHashCode();
                }
                if (this.Code != null)
                {
                    hashCode = (hashCode * 59) + this.Code.GetHashCode();
                }
                if (this.MicCode != null)
                {
                    hashCode = (hashCode * 59) + this.MicCode.GetHashCode();
                }
                if (this.Name != null)
                {
                    hashCode = (hashCode * 59) + this.Name.GetHashCode();
                }
                if (this.Timezone != null)
                {
                    hashCode = (hashCode * 59) + this.Timezone.GetHashCode();
                }
                if (this.StartTime != null)
                {
                    hashCode = (hashCode * 59) + this.StartTime.GetHashCode();
                }
                if (this.CloseTime != null)
                {
                    hashCode = (hashCode * 59) + this.CloseTime.GetHashCode();
                }
                if (this.Suffix != null)
                {
                    hashCode = (hashCode * 59) + this.Suffix.GetHashCode();
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
