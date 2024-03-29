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
    /// ModelPortfolioAssetClass
    /// </summary>
    [DataContract(Name = "ModelPortfolioAssetClass")]
    public partial class ModelPortfolioAssetClass : IEquatable<ModelPortfolioAssetClass>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ModelPortfolioAssetClass" /> class.
        /// </summary>
        /// <param name="modelAssetClass">modelAssetClass.</param>
        /// <param name="percent">percent.</param>
        public ModelPortfolioAssetClass(ModelAssetClass modelAssetClass = default(ModelAssetClass), int percent = default(int)) : base()
        {
            this.ModelAssetClass = modelAssetClass;
            this.Percent = percent;
            this.AdditionalProperties = new Dictionary<string, object>();
        }

        /// <summary>
        /// Gets or Sets ModelAssetClass
        /// </summary>
        [DataMember(Name = "model_asset_class", EmitDefaultValue = false)]
        public ModelAssetClass ModelAssetClass { get; set; }

        /// <summary>
        /// Gets or Sets Percent
        /// </summary>
        [DataMember(Name = "percent", EmitDefaultValue = false)]
        public int Percent { get; set; }

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
            sb.Append("class ModelPortfolioAssetClass {\n");
            sb.Append("  ").Append(base.ToString().Replace("\n", "\n  ")).Append("\n");
            sb.Append("  ModelAssetClass: ").Append(ModelAssetClass).Append("\n");
            sb.Append("  Percent: ").Append(Percent).Append("\n");
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
            return this.Equals(input as ModelPortfolioAssetClass);
        }

        /// <summary>
        /// Returns true if ModelPortfolioAssetClass instances are equal
        /// </summary>
        /// <param name="input">Instance of ModelPortfolioAssetClass to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(ModelPortfolioAssetClass input)
        {
            if (input == null)
            {
                return false;
            }
            return base.Equals(input) && 
                (
                    this.ModelAssetClass == input.ModelAssetClass ||
                    (this.ModelAssetClass != null &&
                    this.ModelAssetClass.Equals(input.ModelAssetClass))
                ) && base.Equals(input) && 
                (
                    this.Percent == input.Percent ||
                    this.Percent.Equals(input.Percent)
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
                if (this.ModelAssetClass != null)
                {
                    hashCode = (hashCode * 59) + this.ModelAssetClass.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.Percent.GetHashCode();
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
            // Percent (int) maximum
            if (this.Percent > (int)100)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Percent, must be a value less than or equal to 100.", new [] { "Percent" });
            }

            // Percent (int) minimum
            if (this.Percent < (int)0)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Percent, must be a value greater than or equal to 0.", new [] { "Percent" });
            }

            yield break;
        }
    }

}
