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
    /// Describes a brokerage that SnapTrade supports.
    /// </summary>
    [DataContract(Name = "Brokerage")]
    public partial class Brokerage : IEquatable<Brokerage>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="Brokerage" /> class.
        /// </summary>
        /// <param name="id">Unique identifier for the brokerage firm. This is the UUID used to reference the brokerage in SnapTrade..</param>
        /// <param name="slug">A short, unique identifier for the brokerage. It is usually the name of the brokerage in capital letters and will never change..</param>
        /// <param name="name">Full name of the brokerage..</param>
        /// <param name="displayName">A display-friendly name of the brokerage..</param>
        /// <param name="description">A brief description of the brokerage..</param>
        /// <param name="awsS3LogoUrl">URL to the brokerage&#39;s logo..</param>
        /// <param name="awsS3SquareLogoUrl">URL to the brokerage&#39;s logo in square format..</param>
        /// <param name="url">URL to the brokerage&#39;s website..</param>
        /// <param name="enabled">Whether the brokerage is enabled in SnapTrade. A disabled brokerage will not be available for new connections..</param>
        /// <param name="maintenanceMode">Whether the brokerage is currently in maintenance mode. A brokerage in maintenance mode will not be available for new connections..</param>
        /// <param name="allowsTrading">Whether the brokerage allows trading through SnapTrade..</param>
        /// <param name="allowsFractionalUnits">This field is deprecated. Please contact us if you have a valid use case for it..</param>
        /// <param name="hasReporting">This field is deprecated. Please contact us if you have a valid use case for it..</param>
        /// <param name="isRealTimeConnection">This field is deprecated. Please contact us if you have a valid use case for it..</param>
        /// <param name="brokerageType">brokerageType.</param>
        /// <param name="exchanges">This field is deprecated. Please contact us if you have a valid use case for it..</param>
        /// <param name="openUrl">This field is deprecated..</param>
        public Brokerage(string id = default(string), string slug = default(string), string name = default(string), string displayName = default(string), string description = default(string), string awsS3LogoUrl = default(string), string awsS3SquareLogoUrl = default(string), string url = default(string), bool enabled = default(bool), bool maintenanceMode = default(bool), bool? allowsTrading = default(bool?), bool? allowsFractionalUnits = default(bool?), bool? hasReporting = default(bool?), bool isRealTimeConnection = default(bool), BrokerageType brokerageType = default(BrokerageType), List<Object> exchanges = default(List<Object>), string openUrl = default(string)) : base()
        {
            this.Id = id;
            this.Slug = slug;
            this.Name = name;
            this.DisplayName = displayName;
            this.Description = description;
            this.AwsS3LogoUrl = awsS3LogoUrl;
            this.AwsS3SquareLogoUrl = awsS3SquareLogoUrl;
            this.Url = url;
            this.Enabled = enabled;
            this.MaintenanceMode = maintenanceMode;
            this.AllowsTrading = allowsTrading;
            this.AllowsFractionalUnits = allowsFractionalUnits;
            this.HasReporting = hasReporting;
            this.IsRealTimeConnection = isRealTimeConnection;
            this.BrokerageType = brokerageType;
            this.Exchanges = exchanges;
            this.OpenUrl = openUrl;
            this.AdditionalProperties = new Dictionary<string, object>();
        }

        /// <summary>
        /// Unique identifier for the brokerage firm. This is the UUID used to reference the brokerage in SnapTrade.
        /// </summary>
        /// <value>Unique identifier for the brokerage firm. This is the UUID used to reference the brokerage in SnapTrade.</value>
        [DataMember(Name = "id", EmitDefaultValue = false)]
        public string Id { get; set; }

        /// <summary>
        /// A short, unique identifier for the brokerage. It is usually the name of the brokerage in capital letters and will never change.
        /// </summary>
        /// <value>A short, unique identifier for the brokerage. It is usually the name of the brokerage in capital letters and will never change.</value>
        [DataMember(Name = "slug", EmitDefaultValue = false)]
        public string Slug { get; set; }

        /// <summary>
        /// Full name of the brokerage.
        /// </summary>
        /// <value>Full name of the brokerage.</value>
        [DataMember(Name = "name", EmitDefaultValue = false)]
        public string Name { get; set; }

        /// <summary>
        /// A display-friendly name of the brokerage.
        /// </summary>
        /// <value>A display-friendly name of the brokerage.</value>
        [DataMember(Name = "display_name", EmitDefaultValue = false)]
        public string DisplayName { get; set; }

        /// <summary>
        /// A brief description of the brokerage.
        /// </summary>
        /// <value>A brief description of the brokerage.</value>
        [DataMember(Name = "description", EmitDefaultValue = false)]
        public string Description { get; set; }

        /// <summary>
        /// URL to the brokerage&#39;s logo.
        /// </summary>
        /// <value>URL to the brokerage&#39;s logo.</value>
        [DataMember(Name = "aws_s3_logo_url", EmitDefaultValue = false)]
        public string AwsS3LogoUrl { get; set; }

        /// <summary>
        /// URL to the brokerage&#39;s logo in square format.
        /// </summary>
        /// <value>URL to the brokerage&#39;s logo in square format.</value>
        [DataMember(Name = "aws_s3_square_logo_url", EmitDefaultValue = true)]
        public string AwsS3SquareLogoUrl { get; set; }

        /// <summary>
        /// URL to the brokerage&#39;s website.
        /// </summary>
        /// <value>URL to the brokerage&#39;s website.</value>
        [DataMember(Name = "url", EmitDefaultValue = false)]
        public string Url { get; set; }

        /// <summary>
        /// Whether the brokerage is enabled in SnapTrade. A disabled brokerage will not be available for new connections.
        /// </summary>
        /// <value>Whether the brokerage is enabled in SnapTrade. A disabled brokerage will not be available for new connections.</value>
        [DataMember(Name = "enabled", EmitDefaultValue = true)]
        public bool Enabled { get; set; }

        /// <summary>
        /// Whether the brokerage is currently in maintenance mode. A brokerage in maintenance mode will not be available for new connections.
        /// </summary>
        /// <value>Whether the brokerage is currently in maintenance mode. A brokerage in maintenance mode will not be available for new connections.</value>
        [DataMember(Name = "maintenance_mode", EmitDefaultValue = true)]
        public bool MaintenanceMode { get; set; }

        /// <summary>
        /// Whether the brokerage allows trading through SnapTrade.
        /// </summary>
        /// <value>Whether the brokerage allows trading through SnapTrade.</value>
        [DataMember(Name = "allows_trading", EmitDefaultValue = true)]
        public bool? AllowsTrading { get; set; }

        /// <summary>
        /// This field is deprecated. Please contact us if you have a valid use case for it.
        /// </summary>
        /// <value>This field is deprecated. Please contact us if you have a valid use case for it.</value>
        [DataMember(Name = "allows_fractional_units", EmitDefaultValue = true)]
        [Obsolete]
        public bool? AllowsFractionalUnits { get; set; }

        /// <summary>
        /// This field is deprecated. Please contact us if you have a valid use case for it.
        /// </summary>
        /// <value>This field is deprecated. Please contact us if you have a valid use case for it.</value>
        [DataMember(Name = "has_reporting", EmitDefaultValue = true)]
        [Obsolete]
        public bool? HasReporting { get; set; }

        /// <summary>
        /// This field is deprecated. Please contact us if you have a valid use case for it.
        /// </summary>
        /// <value>This field is deprecated. Please contact us if you have a valid use case for it.</value>
        [DataMember(Name = "is_real_time_connection", EmitDefaultValue = true)]
        [Obsolete]
        public bool IsRealTimeConnection { get; set; }

        /// <summary>
        /// Gets or Sets BrokerageType
        /// </summary>
        [DataMember(Name = "brokerage_type", EmitDefaultValue = false)]
        public BrokerageType BrokerageType { get; set; }

        /// <summary>
        /// This field is deprecated. Please contact us if you have a valid use case for it.
        /// </summary>
        /// <value>This field is deprecated. Please contact us if you have a valid use case for it.</value>
        [DataMember(Name = "exchanges", EmitDefaultValue = false)]
        [Obsolete]
        public List<Object> Exchanges { get; set; }

        /// <summary>
        /// This field is deprecated.
        /// </summary>
        /// <value>This field is deprecated.</value>
        [DataMember(Name = "open_url", EmitDefaultValue = true)]
        [Obsolete]
        public string OpenUrl { get; set; }

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
            sb.Append("class Brokerage {\n");
            sb.Append("  ").Append(base.ToString().Replace("\n", "\n  ")).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Slug: ").Append(Slug).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  DisplayName: ").Append(DisplayName).Append("\n");
            sb.Append("  Description: ").Append(Description).Append("\n");
            sb.Append("  AwsS3LogoUrl: ").Append(AwsS3LogoUrl).Append("\n");
            sb.Append("  AwsS3SquareLogoUrl: ").Append(AwsS3SquareLogoUrl).Append("\n");
            sb.Append("  Url: ").Append(Url).Append("\n");
            sb.Append("  Enabled: ").Append(Enabled).Append("\n");
            sb.Append("  MaintenanceMode: ").Append(MaintenanceMode).Append("\n");
            sb.Append("  AllowsTrading: ").Append(AllowsTrading).Append("\n");
            sb.Append("  AllowsFractionalUnits: ").Append(AllowsFractionalUnits).Append("\n");
            sb.Append("  HasReporting: ").Append(HasReporting).Append("\n");
            sb.Append("  IsRealTimeConnection: ").Append(IsRealTimeConnection).Append("\n");
            sb.Append("  BrokerageType: ").Append(BrokerageType).Append("\n");
            sb.Append("  Exchanges: ").Append(Exchanges).Append("\n");
            sb.Append("  OpenUrl: ").Append(OpenUrl).Append("\n");
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
            return this.Equals(input as Brokerage);
        }

        /// <summary>
        /// Returns true if Brokerage instances are equal
        /// </summary>
        /// <param name="input">Instance of Brokerage to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(Brokerage input)
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
                    this.DisplayName == input.DisplayName ||
                    (this.DisplayName != null &&
                    this.DisplayName.Equals(input.DisplayName))
                ) && base.Equals(input) && 
                (
                    this.Description == input.Description ||
                    (this.Description != null &&
                    this.Description.Equals(input.Description))
                ) && base.Equals(input) && 
                (
                    this.AwsS3LogoUrl == input.AwsS3LogoUrl ||
                    (this.AwsS3LogoUrl != null &&
                    this.AwsS3LogoUrl.Equals(input.AwsS3LogoUrl))
                ) && base.Equals(input) && 
                (
                    this.AwsS3SquareLogoUrl == input.AwsS3SquareLogoUrl ||
                    (this.AwsS3SquareLogoUrl != null &&
                    this.AwsS3SquareLogoUrl.Equals(input.AwsS3SquareLogoUrl))
                ) && base.Equals(input) && 
                (
                    this.Url == input.Url ||
                    (this.Url != null &&
                    this.Url.Equals(input.Url))
                ) && base.Equals(input) && 
                (
                    this.Enabled == input.Enabled ||
                    this.Enabled.Equals(input.Enabled)
                ) && base.Equals(input) && 
                (
                    this.MaintenanceMode == input.MaintenanceMode ||
                    this.MaintenanceMode.Equals(input.MaintenanceMode)
                ) && base.Equals(input) && 
                (
                    this.AllowsTrading == input.AllowsTrading ||
                    (this.AllowsTrading != null &&
                    this.AllowsTrading.Equals(input.AllowsTrading))
                ) && base.Equals(input) && 
                (
                    this.AllowsFractionalUnits == input.AllowsFractionalUnits ||
                    (this.AllowsFractionalUnits != null &&
                    this.AllowsFractionalUnits.Equals(input.AllowsFractionalUnits))
                ) && base.Equals(input) && 
                (
                    this.HasReporting == input.HasReporting ||
                    (this.HasReporting != null &&
                    this.HasReporting.Equals(input.HasReporting))
                ) && base.Equals(input) && 
                (
                    this.IsRealTimeConnection == input.IsRealTimeConnection ||
                    this.IsRealTimeConnection.Equals(input.IsRealTimeConnection)
                ) && base.Equals(input) && 
                (
                    this.BrokerageType == input.BrokerageType ||
                    (this.BrokerageType != null &&
                    this.BrokerageType.Equals(input.BrokerageType))
                ) && base.Equals(input) && 
                (
                    this.Exchanges == input.Exchanges ||
                    this.Exchanges != null &&
                    input.Exchanges != null &&
                    this.Exchanges.SequenceEqual(input.Exchanges)
                ) && base.Equals(input) && 
                (
                    this.OpenUrl == input.OpenUrl ||
                    (this.OpenUrl != null &&
                    this.OpenUrl.Equals(input.OpenUrl))
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
                if (this.Slug != null)
                {
                    hashCode = (hashCode * 59) + this.Slug.GetHashCode();
                }
                if (this.Name != null)
                {
                    hashCode = (hashCode * 59) + this.Name.GetHashCode();
                }
                if (this.DisplayName != null)
                {
                    hashCode = (hashCode * 59) + this.DisplayName.GetHashCode();
                }
                if (this.Description != null)
                {
                    hashCode = (hashCode * 59) + this.Description.GetHashCode();
                }
                if (this.AwsS3LogoUrl != null)
                {
                    hashCode = (hashCode * 59) + this.AwsS3LogoUrl.GetHashCode();
                }
                if (this.AwsS3SquareLogoUrl != null)
                {
                    hashCode = (hashCode * 59) + this.AwsS3SquareLogoUrl.GetHashCode();
                }
                if (this.Url != null)
                {
                    hashCode = (hashCode * 59) + this.Url.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.Enabled.GetHashCode();
                hashCode = (hashCode * 59) + this.MaintenanceMode.GetHashCode();
                if (this.AllowsTrading != null)
                {
                    hashCode = (hashCode * 59) + this.AllowsTrading.GetHashCode();
                }
                if (this.AllowsFractionalUnits != null)
                {
                    hashCode = (hashCode * 59) + this.AllowsFractionalUnits.GetHashCode();
                }
                if (this.HasReporting != null)
                {
                    hashCode = (hashCode * 59) + this.HasReporting.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.IsRealTimeConnection.GetHashCode();
                if (this.BrokerageType != null)
                {
                    hashCode = (hashCode * 59) + this.BrokerageType.GetHashCode();
                }
                if (this.Exchanges != null)
                {
                    hashCode = (hashCode * 59) + this.Exchanges.GetHashCode();
                }
                if (this.OpenUrl != null)
                {
                    hashCode = (hashCode * 59) + this.OpenUrl.GetHashCode();
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
