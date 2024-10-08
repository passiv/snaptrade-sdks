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
    /// Uniquely describes a security for the position within an account. The distinction between this and the &#x60;symbol&#x60; child property is that this object is specific to a position within an account, while the &#x60;symbol&#x60; child property is universal across all brokerage accounts. The caller should rely on the &#x60;symbol&#x60; child property for most use cases.
    /// </summary>
    [DataContract(Name = "PositionSymbol")]
    public partial class PositionSymbol : IEquatable<PositionSymbol>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="PositionSymbol" /> class.
        /// </summary>
        /// <param name="symbol">symbol.</param>
        /// <param name="id">A unique ID for the security within SnapTrade, scoped to the brokerage account that the security belongs to. This is a legacy field and should not be used. Do not rely on this being a stable ID as it can change..</param>
        /// <param name="description">This field is deprecated and the caller should use the &#x60;symbol&#x60; child property&#39;s &#x60;description&#x60; instead..</param>
        /// <param name="localId">This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this..</param>
        /// <param name="isQuotable">This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this..</param>
        /// <param name="isTradable">This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this..</param>
        public PositionSymbol(UniversalSymbol symbol = default(UniversalSymbol), string id = default(string), string description = default(string), string localId = default(string), bool isQuotable = default(bool), bool isTradable = default(bool)) : base()
        {
            this.Symbol = symbol;
            this.Id = id;
            this.Description = description;
            this.LocalId = localId;
            this.IsQuotable = isQuotable;
            this.IsTradable = isTradable;
            this.AdditionalProperties = new Dictionary<string, object>();
        }

        /// <summary>
        /// Gets or Sets Symbol
        /// </summary>
        [DataMember(Name = "symbol", EmitDefaultValue = false)]
        public UniversalSymbol Symbol { get; set; }

        /// <summary>
        /// A unique ID for the security within SnapTrade, scoped to the brokerage account that the security belongs to. This is a legacy field and should not be used. Do not rely on this being a stable ID as it can change.
        /// </summary>
        /// <value>A unique ID for the security within SnapTrade, scoped to the brokerage account that the security belongs to. This is a legacy field and should not be used. Do not rely on this being a stable ID as it can change.</value>
        [DataMember(Name = "id", EmitDefaultValue = false)]
        [Obsolete]
        public string Id { get; set; }

        /// <summary>
        /// This field is deprecated and the caller should use the &#x60;symbol&#x60; child property&#39;s &#x60;description&#x60; instead.
        /// </summary>
        /// <value>This field is deprecated and the caller should use the &#x60;symbol&#x60; child property&#39;s &#x60;description&#x60; instead.</value>
        [DataMember(Name = "description", EmitDefaultValue = false)]
        [Obsolete]
        public string Description { get; set; }

        /// <summary>
        /// This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this.
        /// </summary>
        /// <value>This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this.</value>
        [DataMember(Name = "local_id", EmitDefaultValue = true)]
        [Obsolete]
        public string LocalId { get; set; }

        /// <summary>
        /// This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this.
        /// </summary>
        /// <value>This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this.</value>
        [DataMember(Name = "is_quotable", EmitDefaultValue = true)]
        [Obsolete]
        public bool IsQuotable { get; set; }

        /// <summary>
        /// This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this.
        /// </summary>
        /// <value>This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this.</value>
        [DataMember(Name = "is_tradable", EmitDefaultValue = true)]
        [Obsolete]
        public bool IsTradable { get; set; }

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
            sb.Append("class PositionSymbol {\n");
            sb.Append("  ").Append(base.ToString().Replace("\n", "\n  ")).Append("\n");
            sb.Append("  Symbol: ").Append(Symbol).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Description: ").Append(Description).Append("\n");
            sb.Append("  LocalId: ").Append(LocalId).Append("\n");
            sb.Append("  IsQuotable: ").Append(IsQuotable).Append("\n");
            sb.Append("  IsTradable: ").Append(IsTradable).Append("\n");
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
            return this.Equals(input as PositionSymbol);
        }

        /// <summary>
        /// Returns true if PositionSymbol instances are equal
        /// </summary>
        /// <param name="input">Instance of PositionSymbol to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(PositionSymbol input)
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
                    this.Id == input.Id ||
                    (this.Id != null &&
                    this.Id.Equals(input.Id))
                ) && base.Equals(input) && 
                (
                    this.Description == input.Description ||
                    (this.Description != null &&
                    this.Description.Equals(input.Description))
                ) && base.Equals(input) && 
                (
                    this.LocalId == input.LocalId ||
                    (this.LocalId != null &&
                    this.LocalId.Equals(input.LocalId))
                ) && base.Equals(input) && 
                (
                    this.IsQuotable == input.IsQuotable ||
                    this.IsQuotable.Equals(input.IsQuotable)
                ) && base.Equals(input) && 
                (
                    this.IsTradable == input.IsTradable ||
                    this.IsTradable.Equals(input.IsTradable)
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
                if (this.Id != null)
                {
                    hashCode = (hashCode * 59) + this.Id.GetHashCode();
                }
                if (this.Description != null)
                {
                    hashCode = (hashCode * 59) + this.Description.GetHashCode();
                }
                if (this.LocalId != null)
                {
                    hashCode = (hashCode * 59) + this.LocalId.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.IsQuotable.GetHashCode();
                hashCode = (hashCode * 59) + this.IsTradable.GetHashCode();
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
