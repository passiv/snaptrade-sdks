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
    /// Configurations for your SnapTrade Client ID, including allowed brokerages and data access.
    /// </summary>
    [DataContract(Name = "PartnerData")]
    public partial class PartnerData : IEquatable<PartnerData>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="PartnerData" /> class.
        /// </summary>
        /// <param name="slug">A short, unique identifier for your company or product..</param>
        /// <param name="name">Your company or product name..</param>
        /// <param name="logoUrl">URL to your company or product logo..</param>
        /// <param name="allowedBrokerages">Brokerages that can be accessed by your Client ID..</param>
        /// <param name="canAccessTrades">Whether trading is enabled for your SnapTrade Client ID..</param>
        /// <param name="canAccessHoldings">Whether holdings data is enabled for your SnapTrade Client ID..</param>
        /// <param name="canAccessAccountHistory">Whether account historical transactions is enabled for your SnapTrade Client ID..</param>
        /// <param name="canAccessReferenceData">Whether reference data is enabled for your SnapTrade Client ID..</param>
        /// <param name="canAccessPortfolioManagement">Whether portfolio management is enabled for your SnapTrade Client ID..</param>
        /// <param name="canAccessOrders">Whether recent order history is enabled for your SnapTrade Client ID..</param>
        /// <param name="redirectUri">URI to redirect user back to after user is done adding brokerage connections..</param>
        /// <param name="pinRequired">Shows if pin is required by users to access connection page. This field has been deprecated..</param>
        public PartnerData(string slug = default(string), string name = default(string), string logoUrl = default(string), List<Brokerage> allowedBrokerages = default(List<Brokerage>), bool canAccessTrades = default(bool), bool canAccessHoldings = default(bool), bool canAccessAccountHistory = default(bool), bool canAccessReferenceData = default(bool), bool canAccessPortfolioManagement = default(bool), bool canAccessOrders = default(bool), string redirectUri = default(string), bool pinRequired = default(bool)) : base()
        {
            this.Slug = slug;
            this.Name = name;
            this.LogoUrl = logoUrl;
            this.AllowedBrokerages = allowedBrokerages;
            this.CanAccessTrades = canAccessTrades;
            this.CanAccessHoldings = canAccessHoldings;
            this.CanAccessAccountHistory = canAccessAccountHistory;
            this.CanAccessReferenceData = canAccessReferenceData;
            this.CanAccessPortfolioManagement = canAccessPortfolioManagement;
            this.CanAccessOrders = canAccessOrders;
            this.RedirectUri = redirectUri;
            this.PinRequired = pinRequired;
            this.AdditionalProperties = new Dictionary<string, object>();
        }

        /// <summary>
        /// A short, unique identifier for your company or product.
        /// </summary>
        /// <value>A short, unique identifier for your company or product.</value>
        [DataMember(Name = "slug", EmitDefaultValue = false)]
        public string Slug { get; set; }

        /// <summary>
        /// Your company or product name.
        /// </summary>
        /// <value>Your company or product name.</value>
        [DataMember(Name = "name", EmitDefaultValue = false)]
        public string Name { get; set; }

        /// <summary>
        /// URL to your company or product logo.
        /// </summary>
        /// <value>URL to your company or product logo.</value>
        [DataMember(Name = "logo_url", EmitDefaultValue = false)]
        public string LogoUrl { get; set; }

        /// <summary>
        /// Brokerages that can be accessed by your Client ID.
        /// </summary>
        /// <value>Brokerages that can be accessed by your Client ID.</value>
        [DataMember(Name = "allowed_brokerages", EmitDefaultValue = false)]
        public List<Brokerage> AllowedBrokerages { get; set; }

        /// <summary>
        /// Whether trading is enabled for your SnapTrade Client ID.
        /// </summary>
        /// <value>Whether trading is enabled for your SnapTrade Client ID.</value>
        [DataMember(Name = "can_access_trades", EmitDefaultValue = true)]
        public bool CanAccessTrades { get; set; }

        /// <summary>
        /// Whether holdings data is enabled for your SnapTrade Client ID.
        /// </summary>
        /// <value>Whether holdings data is enabled for your SnapTrade Client ID.</value>
        [DataMember(Name = "can_access_holdings", EmitDefaultValue = true)]
        public bool CanAccessHoldings { get; set; }

        /// <summary>
        /// Whether account historical transactions is enabled for your SnapTrade Client ID.
        /// </summary>
        /// <value>Whether account historical transactions is enabled for your SnapTrade Client ID.</value>
        [DataMember(Name = "can_access_account_history", EmitDefaultValue = true)]
        public bool CanAccessAccountHistory { get; set; }

        /// <summary>
        /// Whether reference data is enabled for your SnapTrade Client ID.
        /// </summary>
        /// <value>Whether reference data is enabled for your SnapTrade Client ID.</value>
        [DataMember(Name = "can_access_reference_data", EmitDefaultValue = true)]
        public bool CanAccessReferenceData { get; set; }

        /// <summary>
        /// Whether portfolio management is enabled for your SnapTrade Client ID.
        /// </summary>
        /// <value>Whether portfolio management is enabled for your SnapTrade Client ID.</value>
        [DataMember(Name = "can_access_portfolio_management", EmitDefaultValue = true)]
        public bool CanAccessPortfolioManagement { get; set; }

        /// <summary>
        /// Whether recent order history is enabled for your SnapTrade Client ID.
        /// </summary>
        /// <value>Whether recent order history is enabled for your SnapTrade Client ID.</value>
        [DataMember(Name = "can_access_orders", EmitDefaultValue = true)]
        public bool CanAccessOrders { get; set; }

        /// <summary>
        /// URI to redirect user back to after user is done adding brokerage connections.
        /// </summary>
        /// <value>URI to redirect user back to after user is done adding brokerage connections.</value>
        [DataMember(Name = "redirect_uri", EmitDefaultValue = false)]
        public string RedirectUri { get; set; }

        /// <summary>
        /// Shows if pin is required by users to access connection page. This field has been deprecated.
        /// </summary>
        /// <value>Shows if pin is required by users to access connection page. This field has been deprecated.</value>
        [DataMember(Name = "pin_required", EmitDefaultValue = true)]
        [Obsolete]
        public bool PinRequired { get; set; }

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
            sb.Append("class PartnerData {\n");
            sb.Append("  ").Append(base.ToString().Replace("\n", "\n  ")).Append("\n");
            sb.Append("  Slug: ").Append(Slug).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  LogoUrl: ").Append(LogoUrl).Append("\n");
            sb.Append("  AllowedBrokerages: ").Append(AllowedBrokerages).Append("\n");
            sb.Append("  CanAccessTrades: ").Append(CanAccessTrades).Append("\n");
            sb.Append("  CanAccessHoldings: ").Append(CanAccessHoldings).Append("\n");
            sb.Append("  CanAccessAccountHistory: ").Append(CanAccessAccountHistory).Append("\n");
            sb.Append("  CanAccessReferenceData: ").Append(CanAccessReferenceData).Append("\n");
            sb.Append("  CanAccessPortfolioManagement: ").Append(CanAccessPortfolioManagement).Append("\n");
            sb.Append("  CanAccessOrders: ").Append(CanAccessOrders).Append("\n");
            sb.Append("  RedirectUri: ").Append(RedirectUri).Append("\n");
            sb.Append("  PinRequired: ").Append(PinRequired).Append("\n");
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
            return this.Equals(input as PartnerData);
        }

        /// <summary>
        /// Returns true if PartnerData instances are equal
        /// </summary>
        /// <param name="input">Instance of PartnerData to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(PartnerData input)
        {
            if (input == null)
            {
                return false;
            }
            return base.Equals(input) && 
                (
                    this.Slug == input.Slug ||
                    (this.Slug != null &&
                    this.Slug.Equals(input.Slug))
                ) && base.Equals(input) && 
                (
                    this.Name == input.Name ||
                    (this.Name != null &&
                    this.Name.Equals(input.Name))
                ) && base.Equals(input) && 
                (
                    this.LogoUrl == input.LogoUrl ||
                    (this.LogoUrl != null &&
                    this.LogoUrl.Equals(input.LogoUrl))
                ) && base.Equals(input) && 
                (
                    this.AllowedBrokerages == input.AllowedBrokerages ||
                    this.AllowedBrokerages != null &&
                    input.AllowedBrokerages != null &&
                    this.AllowedBrokerages.SequenceEqual(input.AllowedBrokerages)
                ) && base.Equals(input) && 
                (
                    this.CanAccessTrades == input.CanAccessTrades ||
                    this.CanAccessTrades.Equals(input.CanAccessTrades)
                ) && base.Equals(input) && 
                (
                    this.CanAccessHoldings == input.CanAccessHoldings ||
                    this.CanAccessHoldings.Equals(input.CanAccessHoldings)
                ) && base.Equals(input) && 
                (
                    this.CanAccessAccountHistory == input.CanAccessAccountHistory ||
                    this.CanAccessAccountHistory.Equals(input.CanAccessAccountHistory)
                ) && base.Equals(input) && 
                (
                    this.CanAccessReferenceData == input.CanAccessReferenceData ||
                    this.CanAccessReferenceData.Equals(input.CanAccessReferenceData)
                ) && base.Equals(input) && 
                (
                    this.CanAccessPortfolioManagement == input.CanAccessPortfolioManagement ||
                    this.CanAccessPortfolioManagement.Equals(input.CanAccessPortfolioManagement)
                ) && base.Equals(input) && 
                (
                    this.CanAccessOrders == input.CanAccessOrders ||
                    this.CanAccessOrders.Equals(input.CanAccessOrders)
                ) && base.Equals(input) && 
                (
                    this.RedirectUri == input.RedirectUri ||
                    (this.RedirectUri != null &&
                    this.RedirectUri.Equals(input.RedirectUri))
                ) && base.Equals(input) && 
                (
                    this.PinRequired == input.PinRequired ||
                    this.PinRequired.Equals(input.PinRequired)
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
                if (this.Slug != null)
                {
                    hashCode = (hashCode * 59) + this.Slug.GetHashCode();
                }
                if (this.Name != null)
                {
                    hashCode = (hashCode * 59) + this.Name.GetHashCode();
                }
                if (this.LogoUrl != null)
                {
                    hashCode = (hashCode * 59) + this.LogoUrl.GetHashCode();
                }
                if (this.AllowedBrokerages != null)
                {
                    hashCode = (hashCode * 59) + this.AllowedBrokerages.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.CanAccessTrades.GetHashCode();
                hashCode = (hashCode * 59) + this.CanAccessHoldings.GetHashCode();
                hashCode = (hashCode * 59) + this.CanAccessAccountHistory.GetHashCode();
                hashCode = (hashCode * 59) + this.CanAccessReferenceData.GetHashCode();
                hashCode = (hashCode * 59) + this.CanAccessPortfolioManagement.GetHashCode();
                hashCode = (hashCode * 59) + this.CanAccessOrders.GetHashCode();
                if (this.RedirectUri != null)
                {
                    hashCode = (hashCode * 59) + this.RedirectUri.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.PinRequired.GetHashCode();
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
