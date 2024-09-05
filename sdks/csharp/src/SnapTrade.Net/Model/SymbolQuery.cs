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
    /// SymbolQuery
    /// </summary>
    [DataContract(Name = "SymbolQuery")]
    public partial class SymbolQuery : IEquatable<SymbolQuery>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SymbolQuery" /> class.
        /// </summary>
        /// <param name="substring">The search query for symbols..</param>
        public SymbolQuery(string substring = default(string))
        {
            this.Substring = substring;
        }

        /// <summary>
        /// The search query for symbols.
        /// </summary>
        /// <value>The search query for symbols.</value>
        [DataMember(Name = "substring", EmitDefaultValue = false)]
        public string Substring { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SymbolQuery {\n");
            sb.Append("  Substring: ").Append(Substring).Append("\n");
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
            return this.Equals(input as SymbolQuery);
        }

        /// <summary>
        /// Returns true if SymbolQuery instances are equal
        /// </summary>
        /// <param name="input">Instance of SymbolQuery to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(SymbolQuery input)
        {
            if (input == null)
            {
                return false;
            }
            return 
                (
                    this.Substring == input.Substring ||
                    (this.Substring != null &&
                    this.Substring.Equals(input.Substring))
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
                if (this.Substring != null)
                {
                    hashCode = (hashCode * 59) + this.Substring.GetHashCode();
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
