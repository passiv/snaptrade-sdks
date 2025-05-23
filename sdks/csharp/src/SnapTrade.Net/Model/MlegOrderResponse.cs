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
    /// MlegOrderResponse
    /// </summary>
    [DataContract(Name = "MlegOrderResponse")]
    public partial class MlegOrderResponse : IEquatable<MlegOrderResponse>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="MlegOrderResponse" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected MlegOrderResponse()
        {
            this.AdditionalProperties = new Dictionary<string, object>();
        }
        /// <summary>
        /// Initializes a new instance of the <see cref="MlegOrderResponse" /> class.
        /// </summary>
        /// <param name="brokerageOrderId">Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system. (required).</param>
        /// <param name="orders">orders (required).</param>
        public MlegOrderResponse(string brokerageOrderId = default(string), List<AccountOrderRecord> orders = default(List<AccountOrderRecord>)) : base()
        {
            // to ensure "brokerageOrderId" is required (not null)
            if (brokerageOrderId == null)
            {
                throw new ArgumentNullException("brokerageOrderId is a required property for MlegOrderResponse and cannot be null");
            }
            this.BrokerageOrderId = brokerageOrderId;
            // to ensure "orders" is required (not null)
            if (orders == null)
            {
                throw new ArgumentNullException("orders is a required property for MlegOrderResponse and cannot be null");
            }
            this.Orders = orders;
            this.AdditionalProperties = new Dictionary<string, object>();
        }

        /// <summary>
        /// Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.
        /// </summary>
        /// <value>Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.</value>
        [DataMember(Name = "brokerage_order_id", IsRequired = true, EmitDefaultValue = true)]
        public string BrokerageOrderId { get; set; }

        /// <summary>
        /// Gets or Sets Orders
        /// </summary>
        [DataMember(Name = "orders", IsRequired = true, EmitDefaultValue = true)]
        public List<AccountOrderRecord> Orders { get; set; }

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
            sb.Append("class MlegOrderResponse {\n");
            sb.Append("  ").Append(base.ToString().Replace("\n", "\n  ")).Append("\n");
            sb.Append("  BrokerageOrderId: ").Append(BrokerageOrderId).Append("\n");
            sb.Append("  Orders: ").Append(Orders).Append("\n");
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
            return this.Equals(input as MlegOrderResponse);
        }

        /// <summary>
        /// Returns true if MlegOrderResponse instances are equal
        /// </summary>
        /// <param name="input">Instance of MlegOrderResponse to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(MlegOrderResponse input)
        {
            if (input == null)
            {
                return false;
            }
            return base.Equals(input) && 
                (
                    this.BrokerageOrderId == input.BrokerageOrderId ||
                    (this.BrokerageOrderId != null &&
                    this.BrokerageOrderId.Equals(input.BrokerageOrderId))
                ) && base.Equals(input) && 
                (
                    this.Orders == input.Orders ||
                    this.Orders != null &&
                    input.Orders != null &&
                    this.Orders.SequenceEqual(input.Orders)
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
                if (this.BrokerageOrderId != null)
                {
                    hashCode = (hashCode * 59) + this.BrokerageOrderId.GetHashCode();
                }
                if (this.Orders != null)
                {
                    hashCode = (hashCode * 59) + this.Orders.GetHashCode();
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
