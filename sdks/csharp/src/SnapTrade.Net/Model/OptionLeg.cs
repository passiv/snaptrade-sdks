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
    /// Option Leg
    /// </summary>
    [DataContract(Name = "OptionLeg")]
    public partial class OptionLeg : IEquatable<OptionLeg>, IValidatableObject
    {
        /// <summary>
        /// Defines _Action
        /// </summary>
        [JsonConverter(typeof(StringEnumConverter))]
        public enum ActionEnum
        {
            /// <summary>
            /// Enum BUYTOOPEN for value: BUY_TO_OPEN
            /// </summary>
            [EnumMember(Value = "BUY_TO_OPEN")]
            BUYTOOPEN = 1,

            /// <summary>
            /// Enum BUYTOCLOSE for value: BUY_TO_CLOSE
            /// </summary>
            [EnumMember(Value = "BUY_TO_CLOSE")]
            BUYTOCLOSE = 2,

            /// <summary>
            /// Enum SELLTOOPEN for value: SELL_TO_OPEN
            /// </summary>
            [EnumMember(Value = "SELL_TO_OPEN")]
            SELLTOOPEN = 3,

            /// <summary>
            /// Enum SELLTOCLOSE for value: SELL_TO_CLOSE
            /// </summary>
            [EnumMember(Value = "SELL_TO_CLOSE")]
            SELLTOCLOSE = 4

        }


        /// <summary>
        /// Gets or Sets _Action
        /// </summary>
        [DataMember(Name = "action", EmitDefaultValue = false)]
        public ActionEnum? _Action { get; set; }
        /// <summary>
        /// Initializes a new instance of the <see cref="OptionLeg" /> class.
        /// </summary>
        /// <param name="action">action.</param>
        /// <param name="optionSymbolId">Obtained from calling options chain endpoint (option_id).</param>
        /// <param name="quantity">quantity.</param>
        public OptionLeg(ActionEnum? action = default(ActionEnum?), string optionSymbolId = default(string), double quantity = default(double)) : base()
        {
            this._Action = action;
            this.OptionSymbolId = optionSymbolId;
            this.Quantity = quantity;
            this.AdditionalProperties = new Dictionary<string, object>();
        }

        /// <summary>
        /// Obtained from calling options chain endpoint (option_id)
        /// </summary>
        /// <value>Obtained from calling options chain endpoint (option_id)</value>
        [DataMember(Name = "option_symbol_id", EmitDefaultValue = false)]
        public string OptionSymbolId { get; set; }

        /// <summary>
        /// Gets or Sets Quantity
        /// </summary>
        [DataMember(Name = "quantity", EmitDefaultValue = false)]
        public double Quantity { get; set; }

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
            sb.Append("class OptionLeg {\n");
            sb.Append("  ").Append(base.ToString().Replace("\n", "\n  ")).Append("\n");
            sb.Append("  _Action: ").Append(_Action).Append("\n");
            sb.Append("  OptionSymbolId: ").Append(OptionSymbolId).Append("\n");
            sb.Append("  Quantity: ").Append(Quantity).Append("\n");
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
            return this.Equals(input as OptionLeg);
        }

        /// <summary>
        /// Returns true if OptionLeg instances are equal
        /// </summary>
        /// <param name="input">Instance of OptionLeg to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(OptionLeg input)
        {
            if (input == null)
            {
                return false;
            }
            return base.Equals(input) && 
                (
                    this._Action == input._Action ||
                    this._Action.Equals(input._Action)
                ) && base.Equals(input) && 
                (
                    this.OptionSymbolId == input.OptionSymbolId ||
                    (this.OptionSymbolId != null &&
                    this.OptionSymbolId.Equals(input.OptionSymbolId))
                ) && base.Equals(input) && 
                (
                    this.Quantity == input.Quantity ||
                    this.Quantity.Equals(input.Quantity)
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
                hashCode = (hashCode * 59) + this._Action.GetHashCode();
                if (this.OptionSymbolId != null)
                {
                    hashCode = (hashCode * 59) + this.OptionSymbolId.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.Quantity.GetHashCode();
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
