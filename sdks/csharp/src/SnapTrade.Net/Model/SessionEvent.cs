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
    /// SessionEvent
    /// </summary>
    [DataContract(Name = "SessionEvent")]
    public partial class SessionEvent : IEquatable<SessionEvent>, IValidatableObject
    {
        /// <summary>
        /// Defines SessionEventType
        /// </summary>
        [JsonConverter(typeof(StringEnumConverter))]
        public enum SessionEventTypeEnum
        {
            /// <summary>
            /// Enum CONNECTIONFAILED for value: CONNECTION_FAILED
            /// </summary>
            [EnumMember(Value = "CONNECTION_FAILED")]
            CONNECTIONFAILED = 1,

            /// <summary>
            /// Enum DISCLAIMERACCEPTED for value: DISCLAIMER_ACCEPTED
            /// </summary>
            [EnumMember(Value = "DISCLAIMER_ACCEPTED")]
            DISCLAIMERACCEPTED = 2,

            /// <summary>
            /// Enum BROKERAGECONNECTIONINITIATED for value: BROKERAGE_CONNECTION_INITIATED
            /// </summary>
            [EnumMember(Value = "BROKERAGE_CONNECTION_INITIATED")]
            BROKERAGECONNECTIONINITIATED = 3,

            /// <summary>
            /// Enum BROKERAGEAUTHENTICATION for value: BROKERAGE_AUTHENTICATION
            /// </summary>
            [EnumMember(Value = "BROKERAGE_AUTHENTICATION")]
            BROKERAGEAUTHENTICATION = 4,

            /// <summary>
            /// Enum MFAAUTHORIZATION for value: MFA_AUTHORIZATION
            /// </summary>
            [EnumMember(Value = "MFA_AUTHORIZATION")]
            MFAAUTHORIZATION = 5,

            /// <summary>
            /// Enum CONNECTIONSUCCESSFUL for value: CONNECTION_SUCCESSFUL
            /// </summary>
            [EnumMember(Value = "CONNECTION_SUCCESSFUL")]
            CONNECTIONSUCCESSFUL = 6,

            /// <summary>
            /// Enum PARTNERREDIRECT for value: PARTNER_REDIRECT
            /// </summary>
            [EnumMember(Value = "PARTNER_REDIRECT")]
            PARTNERREDIRECT = 7

        }


        /// <summary>
        /// Gets or Sets SessionEventType
        /// </summary>
        [DataMember(Name = "session_event_type", EmitDefaultValue = false)]
        public SessionEventTypeEnum? SessionEventType { get; set; }
        /// <summary>
        /// Initializes a new instance of the <see cref="SessionEvent" /> class.
        /// </summary>
        /// <param name="id">id.</param>
        /// <param name="sessionEventType">sessionEventType.</param>
        /// <param name="sessionId">sessionId.</param>
        /// <param name="userId">SnapTrade User ID. Provided by SnapTrade Partner. Can be any string, as long as it&#39;s unique to a user.</param>
        /// <param name="createdDate">Time.</param>
        /// <param name="brokerageStatusCode">brokerageStatusCode.</param>
        /// <param name="brokerageAuthorizationId">brokerageAuthorizationId.</param>
        public SessionEvent(Guid id = default(Guid), SessionEventTypeEnum? sessionEventType = default(SessionEventTypeEnum?), Guid sessionId = default(Guid), string userId = default(string), string createdDate = default(string), int? brokerageStatusCode = default(int?), Guid brokerageAuthorizationId = default(Guid)) : base()
        {
            this.Id = id;
            this.SessionEventType = sessionEventType;
            this.SessionId = sessionId;
            this.UserId = userId;
            this.CreatedDate = createdDate;
            this.BrokerageStatusCode = brokerageStatusCode;
            this.BrokerageAuthorizationId = brokerageAuthorizationId;
            this.AdditionalProperties = new Dictionary<string, object>();
        }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name = "id", EmitDefaultValue = false)]
        public Guid Id { get; set; }

        /// <summary>
        /// Gets or Sets SessionId
        /// </summary>
        [DataMember(Name = "session_id", EmitDefaultValue = false)]
        public Guid SessionId { get; set; }

        /// <summary>
        /// SnapTrade User ID. Provided by SnapTrade Partner. Can be any string, as long as it&#39;s unique to a user
        /// </summary>
        /// <value>SnapTrade User ID. Provided by SnapTrade Partner. Can be any string, as long as it&#39;s unique to a user</value>
        [DataMember(Name = "user_id", EmitDefaultValue = false)]
        public string UserId { get; set; }

        /// <summary>
        /// Time
        /// </summary>
        /// <value>Time</value>
        [DataMember(Name = "created_date", EmitDefaultValue = false)]
        public string CreatedDate { get; set; }

        /// <summary>
        /// Gets or Sets BrokerageStatusCode
        /// </summary>
        [DataMember(Name = "brokerage_status_code", EmitDefaultValue = true)]
        public int? BrokerageStatusCode { get; set; }

        /// <summary>
        /// Gets or Sets BrokerageAuthorizationId
        /// </summary>
        [DataMember(Name = "brokerage_authorization_id", EmitDefaultValue = false)]
        public Guid BrokerageAuthorizationId { get; set; }

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
            sb.Append("class SessionEvent {\n");
            sb.Append("  ").Append(base.ToString().Replace("\n", "\n  ")).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  SessionEventType: ").Append(SessionEventType).Append("\n");
            sb.Append("  SessionId: ").Append(SessionId).Append("\n");
            sb.Append("  UserId: ").Append(UserId).Append("\n");
            sb.Append("  CreatedDate: ").Append(CreatedDate).Append("\n");
            sb.Append("  BrokerageStatusCode: ").Append(BrokerageStatusCode).Append("\n");
            sb.Append("  BrokerageAuthorizationId: ").Append(BrokerageAuthorizationId).Append("\n");
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
            return this.Equals(input as SessionEvent);
        }

        /// <summary>
        /// Returns true if SessionEvent instances are equal
        /// </summary>
        /// <param name="input">Instance of SessionEvent to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(SessionEvent input)
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
                    this.SessionEventType == input.SessionEventType ||
                    this.SessionEventType.Equals(input.SessionEventType)
                ) && base.Equals(input) && 
                (
                    this.SessionId == input.SessionId ||
                    (this.SessionId != null &&
                    this.SessionId.Equals(input.SessionId))
                ) && base.Equals(input) && 
                (
                    this.UserId == input.UserId ||
                    (this.UserId != null &&
                    this.UserId.Equals(input.UserId))
                ) && base.Equals(input) && 
                (
                    this.CreatedDate == input.CreatedDate ||
                    (this.CreatedDate != null &&
                    this.CreatedDate.Equals(input.CreatedDate))
                ) && base.Equals(input) && 
                (
                    this.BrokerageStatusCode == input.BrokerageStatusCode ||
                    (this.BrokerageStatusCode != null &&
                    this.BrokerageStatusCode.Equals(input.BrokerageStatusCode))
                ) && base.Equals(input) && 
                (
                    this.BrokerageAuthorizationId == input.BrokerageAuthorizationId ||
                    (this.BrokerageAuthorizationId != null &&
                    this.BrokerageAuthorizationId.Equals(input.BrokerageAuthorizationId))
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
                hashCode = (hashCode * 59) + this.SessionEventType.GetHashCode();
                if (this.SessionId != null)
                {
                    hashCode = (hashCode * 59) + this.SessionId.GetHashCode();
                }
                if (this.UserId != null)
                {
                    hashCode = (hashCode * 59) + this.UserId.GetHashCode();
                }
                if (this.CreatedDate != null)
                {
                    hashCode = (hashCode * 59) + this.CreatedDate.GetHashCode();
                }
                if (this.BrokerageStatusCode != null)
                {
                    hashCode = (hashCode * 59) + this.BrokerageStatusCode.GetHashCode();
                }
                if (this.BrokerageAuthorizationId != null)
                {
                    hashCode = (hashCode * 59) + this.BrokerageAuthorizationId.GetHashCode();
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
