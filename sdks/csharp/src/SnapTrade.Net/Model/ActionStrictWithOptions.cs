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
    /// The action describes the intent or side of a trade. This is either &#x60;BUY&#x60; or &#x60;SELL&#x60; for Equity symbols or &#x60;BUY_TO_OPEN&#x60;, &#x60;BUY_TO_CLOSE&#x60;, &#x60;SELL_TO_OPEN&#x60; or &#x60;SELL_TO_CLOSE&#x60; for Options.
    /// </summary>
    /// <value>The action describes the intent or side of a trade. This is either &#x60;BUY&#x60; or &#x60;SELL&#x60; for Equity symbols or &#x60;BUY_TO_OPEN&#x60;, &#x60;BUY_TO_CLOSE&#x60;, &#x60;SELL_TO_OPEN&#x60; or &#x60;SELL_TO_CLOSE&#x60; for Options.</value>
    [JsonConverter(typeof(StringEnumConverter))]
    public enum ActionStrictWithOptions
    {
        /// <summary>
        /// Enum BUY for value: BUY
        /// </summary>
        [EnumMember(Value = "BUY")]
        BUY = 1,

        /// <summary>
        /// Enum SELL for value: SELL
        /// </summary>
        [EnumMember(Value = "SELL")]
        SELL = 2,

        /// <summary>
        /// Enum BUYTOOPEN for value: BUY_TO_OPEN
        /// </summary>
        [EnumMember(Value = "BUY_TO_OPEN")]
        BUYTOOPEN = 3,

        /// <summary>
        /// Enum BUYTOCLOSE for value: BUY_TO_CLOSE
        /// </summary>
        [EnumMember(Value = "BUY_TO_CLOSE")]
        BUYTOCLOSE = 4,

        /// <summary>
        /// Enum SELLTOOPEN for value: SELL_TO_OPEN
        /// </summary>
        [EnumMember(Value = "SELL_TO_OPEN")]
        SELLTOOPEN = 5,

        /// <summary>
        /// Enum SELLTOCLOSE for value: SELL_TO_CLOSE
        /// </summary>
        [EnumMember(Value = "SELL_TO_CLOSE")]
        SELLTOCLOSE = 6

    }

}