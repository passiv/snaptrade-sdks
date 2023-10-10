# Trading with SnapTrade

## To trade with SnapTrade:

> 🚧 Soft Rate Limit
>
> We ask that you limit trade requests to five (5) at a time. Every brokerage varies but we have found anything beyond five may be subject to issues.

> 📘 Live Demo
>
> If you would like to test out trading and other features, please use our hosted demo here:  
> <https://demo.konfigthis.com/passiv/snaptrade-sdks/getting-started>

1. Find the universal_symbol_id of the security you want to trade using <https://docs.snaptrade.com/reference/referencedata_symbolsearchuseraccount> with the users account  
   This will lookup tradeable securities based on the account you want to place the trade in. You will need to use this id in step 2.
2. Either:  
   Use order impact (to see how it affects the account) <https://docs.snaptrade.com/reference/trading_getorderimpact>  
   After getting impact, you use this endpoint to place the trade with the trade id : <https://docs.snaptrade.com/reference/trading_placeorder>  
   OR  
   If you don't want to have any validation or impact check you can use this endpoint instead of impact/place: <https://docs.snaptrade.com/reference/trading_placeforceorder>

## Create a trading connection

By default connections are created with read-only permissions. To create a trading-enabled connection set the `connectionType` body parameter to `trade` when calling the [login redirect endpoint](https://docs.snaptrade.com/reference/authentication_loginsnaptradeuser).

## Enable trading for existing connections

To enable trading for an existing connection you will have to ask the user to re-authorize access. To generate the re-authorize redirect URL set the `reconnect` body parameter to the ID of the existing connection when calling the [login redirect endpoint](https://docs.snaptrade.com/reference/authentication_loginsnaptradeuser) along with `connectionType=trade`.
