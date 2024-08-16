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
    /// Contains status update for the account sync process between SnapTrade and the brokerage.
    /// </summary>
    [DataContract(Name = "AccountSyncStatus")]
    public partial class AccountSyncStatus : IEquatable<AccountSyncStatus>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="AccountSyncStatus" /> class.
        /// </summary>
        /// <param name="transactions">transactions.</param>
        /// <param name="holdings">holdings.</param>
        public AccountSyncStatus(TransactionsStatus transactions = default(TransactionsStatus), HoldingsStatus holdings = default(HoldingsStatus))
        {
            this.Transactions = transactions;
            this.Holdings = holdings;
        }

        /// <summary>
        /// Gets or Sets Transactions
        /// </summary>
        [DataMember(Name = "transactions", EmitDefaultValue = false)]
        public TransactionsStatus Transactions { get; set; }

        /// <summary>
        /// Gets or Sets Holdings
        /// </summary>
        [DataMember(Name = "holdings", EmitDefaultValue = false)]
        public HoldingsStatus Holdings { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class AccountSyncStatus {\n");
            sb.Append("  Transactions: ").Append(Transactions).Append("\n");
            sb.Append("  Holdings: ").Append(Holdings).Append("\n");
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
            return this.Equals(input as AccountSyncStatus);
        }

        /// <summary>
        /// Returns true if AccountSyncStatus instances are equal
        /// </summary>
        /// <param name="input">Instance of AccountSyncStatus to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(AccountSyncStatus input)
        {
            if (input == null)
            {
                return false;
            }
            return 
                (
                    this.Transactions == input.Transactions ||
                    (this.Transactions != null &&
                    this.Transactions.Equals(input.Transactions))
                ) && 
                (
                    this.Holdings == input.Holdings ||
                    (this.Holdings != null &&
                    this.Holdings.Equals(input.Holdings))
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
                if (this.Transactions != null)
                {
                    hashCode = (hashCode * 59) + this.Transactions.GetHashCode();
                }
                if (this.Holdings != null)
                {
                    hashCode = (hashCode * 59) + this.Holdings.GetHashCode();
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
