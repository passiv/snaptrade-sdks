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
    /// Data required to register a user via SnapTrade Partner
    /// </summary>
    [DataContract(Name = "SnapTradeRegisterUserRequestBody")]
    public partial class SnapTradeRegisterUserRequestBody : IEquatable<SnapTradeRegisterUserRequestBody>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SnapTradeRegisterUserRequestBody" /> class.
        /// </summary>
        /// <param name="userId">SnapTrade User ID. Provided by SnapTrade Partner. Can be any string, as long as it&#39;s unique to a user.</param>
        /// <param name="rsaPublicKey">Open SSH RSA public key.</param>
        public SnapTradeRegisterUserRequestBody(string userId = default(string), string rsaPublicKey = default(string))
        {
            this.UserId = userId;
            this.RsaPublicKey = rsaPublicKey;
        }

        /// <summary>
        /// SnapTrade User ID. Provided by SnapTrade Partner. Can be any string, as long as it&#39;s unique to a user
        /// </summary>
        /// <value>SnapTrade User ID. Provided by SnapTrade Partner. Can be any string, as long as it&#39;s unique to a user</value>
        [DataMember(Name = "userId", EmitDefaultValue = false)]
        public string UserId { get; set; }

        /// <summary>
        /// Open SSH RSA public key
        /// </summary>
        /// <value>Open SSH RSA public key</value>
        [DataMember(Name = "rsaPublicKey", EmitDefaultValue = false)]
        public string RsaPublicKey { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SnapTradeRegisterUserRequestBody {\n");
            sb.Append("  UserId: ").Append(UserId).Append("\n");
            sb.Append("  RsaPublicKey: ").Append(RsaPublicKey).Append("\n");
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
            return this.Equals(input as SnapTradeRegisterUserRequestBody);
        }

        /// <summary>
        /// Returns true if SnapTradeRegisterUserRequestBody instances are equal
        /// </summary>
        /// <param name="input">Instance of SnapTradeRegisterUserRequestBody to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(SnapTradeRegisterUserRequestBody input)
        {
            if (input == null)
            {
                return false;
            }
            return 
                (
                    this.UserId == input.UserId ||
                    (this.UserId != null &&
                    this.UserId.Equals(input.UserId))
                ) && 
                (
                    this.RsaPublicKey == input.RsaPublicKey ||
                    (this.RsaPublicKey != null &&
                    this.RsaPublicKey.Equals(input.RsaPublicKey))
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
                if (this.UserId != null)
                {
                    hashCode = (hashCode * 59) + this.UserId.GetHashCode();
                }
                if (this.RsaPublicKey != null)
                {
                    hashCode = (hashCode * 59) + this.RsaPublicKey.GetHashCode();
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