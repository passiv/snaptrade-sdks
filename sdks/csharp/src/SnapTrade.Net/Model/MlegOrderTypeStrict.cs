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
    /// The type of order to place.
    /// </summary>
    /// <value>The type of order to place.</value>
    [JsonConverter(typeof(StringEnumConverter))]
    public enum MlegOrderTypeStrict
    {
        /// <summary>
        /// Enum MARKET for value: MARKET
        /// </summary>
        [EnumMember(Value = "MARKET")]
        MARKET = 1,

        /// <summary>
        /// Enum LIMIT for value: LIMIT
        /// </summary>
        [EnumMember(Value = "LIMIT")]
        LIMIT = 2,

        /// <summary>
        /// Enum STOPLOSSMARKET for value: STOP_LOSS_MARKET
        /// </summary>
        [EnumMember(Value = "STOP_LOSS_MARKET")]
        STOPLOSSMARKET = 3,

        /// <summary>
        /// Enum STOPLOSSLIMIT for value: STOP_LOSS_LIMIT
        /// </summary>
        [EnumMember(Value = "STOP_LOSS_LIMIT")]
        STOPLOSSLIMIT = 4

    }

}
