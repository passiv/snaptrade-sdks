# StrategyOrderPlaceOrdersInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** |  | [optional] 
**Symbol** | Pointer to **string** |  | [optional] 
**SymbolId** | Pointer to **int32** |  | [optional] 
**TotalQuantity** | Pointer to **int32** |  | [optional] 
**OpenQuantity** | Pointer to **int32** |  | [optional] 
**FilledQuantity** | Pointer to **int32** |  | [optional] 
**CanceledQuantity** | Pointer to **int32** |  | [optional] 
**Side** | Pointer to **string** |  | [optional] 
**OrderType** | Pointer to **string** |  | [optional] 
**LimitPrice** | Pointer to **string** |  | [optional] 
**StopPrice** | Pointer to **string** |  | [optional] 
**IsAllOrNone** | Pointer to **bool** |  | [optional] 
**IsAnonymous** | Pointer to **bool** |  | [optional] 
**IcebergQuantity** | Pointer to **string** |  | [optional] 
**MinQuantity** | Pointer to **string** |  | [optional] 
**AvgExecPrice** | Pointer to **int32** |  | [optional] 
**LastExecPrice** | Pointer to **string** |  | [optional] 
**Source** | Pointer to **string** |  | [optional] 
**TimeInForce** | Pointer to **string** |  | [optional] 
**GtdDate** | Pointer to **string** |  | [optional] 
**State** | Pointer to **string** |  | [optional] 
**RejectionReason** | Pointer to **string** |  | [optional] 
**ChainId** | Pointer to **int32** |  | [optional] 
**CreationTime** | Pointer to **string** |  | [optional] 
**UpdateTime** | Pointer to **string** |  | [optional] 
**Notes** | Pointer to **string** |  | [optional] 
**PrimaryRoute** | Pointer to **string** |  | [optional] 
**SecondaryRoute** | Pointer to **string** |  | [optional] 
**OrderRoute** | Pointer to **string** |  | [optional] 
**VenueHoldingOrder** | Pointer to **string** |  | [optional] 
**ComissionCharged** | Pointer to **int32** |  | [optional] 
**ExchangeOrderId** | Pointer to **string** |  | [optional] 
**IsSignificantShareHolder** | Pointer to **bool** |  | [optional] 
**IsInsider** | Pointer to **bool** |  | [optional] 
**IsLimitOffsetInDollar** | Pointer to **bool** |  | [optional] 
**UserId** | Pointer to **int32** |  | [optional] 
**PlacementCommission** | Pointer to **string** |  | [optional] 
**Legs** | Pointer to [**[]StrategyOrderPlaceOrdersInnerLegsInner**](StrategyOrderPlaceOrdersInnerLegsInner.md) |  | [optional] 
**StrategyType** | Pointer to **string** |  | [optional] 
**TriggerStopPrice** | Pointer to **string** |  | [optional] 
**OrderGroupId** | Pointer to **int32** |  | [optional] 
**OrderClass** | Pointer to **string** |  | [optional] 
**IsCrossZero** | Pointer to **bool** |  | [optional] 

## Methods

### NewStrategyOrderPlaceOrdersInner

`func NewStrategyOrderPlaceOrdersInner() *StrategyOrderPlaceOrdersInner`

NewStrategyOrderPlaceOrdersInner instantiates a new StrategyOrderPlaceOrdersInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewStrategyOrderPlaceOrdersInnerWithDefaults

`func NewStrategyOrderPlaceOrdersInnerWithDefaults() *StrategyOrderPlaceOrdersInner`

NewStrategyOrderPlaceOrdersInnerWithDefaults instantiates a new StrategyOrderPlaceOrdersInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *StrategyOrderPlaceOrdersInner) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *StrategyOrderPlaceOrdersInner) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *StrategyOrderPlaceOrdersInner) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *StrategyOrderPlaceOrdersInner) HasId() bool`

HasId returns a boolean if a field has been set.

### GetSymbol

`func (o *StrategyOrderPlaceOrdersInner) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *StrategyOrderPlaceOrdersInner) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *StrategyOrderPlaceOrdersInner) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *StrategyOrderPlaceOrdersInner) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### GetSymbolId

`func (o *StrategyOrderPlaceOrdersInner) GetSymbolId() int32`

GetSymbolId returns the SymbolId field if non-nil, zero value otherwise.

### GetSymbolIdOk

`func (o *StrategyOrderPlaceOrdersInner) GetSymbolIdOk() (*int32, bool)`

GetSymbolIdOk returns a tuple with the SymbolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolId

`func (o *StrategyOrderPlaceOrdersInner) SetSymbolId(v int32)`

SetSymbolId sets SymbolId field to given value.

### HasSymbolId

`func (o *StrategyOrderPlaceOrdersInner) HasSymbolId() bool`

HasSymbolId returns a boolean if a field has been set.

### GetTotalQuantity

`func (o *StrategyOrderPlaceOrdersInner) GetTotalQuantity() int32`

GetTotalQuantity returns the TotalQuantity field if non-nil, zero value otherwise.

### GetTotalQuantityOk

`func (o *StrategyOrderPlaceOrdersInner) GetTotalQuantityOk() (*int32, bool)`

GetTotalQuantityOk returns a tuple with the TotalQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalQuantity

`func (o *StrategyOrderPlaceOrdersInner) SetTotalQuantity(v int32)`

SetTotalQuantity sets TotalQuantity field to given value.

### HasTotalQuantity

`func (o *StrategyOrderPlaceOrdersInner) HasTotalQuantity() bool`

HasTotalQuantity returns a boolean if a field has been set.

### GetOpenQuantity

`func (o *StrategyOrderPlaceOrdersInner) GetOpenQuantity() int32`

GetOpenQuantity returns the OpenQuantity field if non-nil, zero value otherwise.

### GetOpenQuantityOk

`func (o *StrategyOrderPlaceOrdersInner) GetOpenQuantityOk() (*int32, bool)`

GetOpenQuantityOk returns a tuple with the OpenQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOpenQuantity

`func (o *StrategyOrderPlaceOrdersInner) SetOpenQuantity(v int32)`

SetOpenQuantity sets OpenQuantity field to given value.

### HasOpenQuantity

`func (o *StrategyOrderPlaceOrdersInner) HasOpenQuantity() bool`

HasOpenQuantity returns a boolean if a field has been set.

### GetFilledQuantity

`func (o *StrategyOrderPlaceOrdersInner) GetFilledQuantity() int32`

GetFilledQuantity returns the FilledQuantity field if non-nil, zero value otherwise.

### GetFilledQuantityOk

`func (o *StrategyOrderPlaceOrdersInner) GetFilledQuantityOk() (*int32, bool)`

GetFilledQuantityOk returns a tuple with the FilledQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFilledQuantity

`func (o *StrategyOrderPlaceOrdersInner) SetFilledQuantity(v int32)`

SetFilledQuantity sets FilledQuantity field to given value.

### HasFilledQuantity

`func (o *StrategyOrderPlaceOrdersInner) HasFilledQuantity() bool`

HasFilledQuantity returns a boolean if a field has been set.

### GetCanceledQuantity

`func (o *StrategyOrderPlaceOrdersInner) GetCanceledQuantity() int32`

GetCanceledQuantity returns the CanceledQuantity field if non-nil, zero value otherwise.

### GetCanceledQuantityOk

`func (o *StrategyOrderPlaceOrdersInner) GetCanceledQuantityOk() (*int32, bool)`

GetCanceledQuantityOk returns a tuple with the CanceledQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCanceledQuantity

`func (o *StrategyOrderPlaceOrdersInner) SetCanceledQuantity(v int32)`

SetCanceledQuantity sets CanceledQuantity field to given value.

### HasCanceledQuantity

`func (o *StrategyOrderPlaceOrdersInner) HasCanceledQuantity() bool`

HasCanceledQuantity returns a boolean if a field has been set.

### GetSide

`func (o *StrategyOrderPlaceOrdersInner) GetSide() string`

GetSide returns the Side field if non-nil, zero value otherwise.

### GetSideOk

`func (o *StrategyOrderPlaceOrdersInner) GetSideOk() (*string, bool)`

GetSideOk returns a tuple with the Side field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSide

`func (o *StrategyOrderPlaceOrdersInner) SetSide(v string)`

SetSide sets Side field to given value.

### HasSide

`func (o *StrategyOrderPlaceOrdersInner) HasSide() bool`

HasSide returns a boolean if a field has been set.

### GetOrderType

`func (o *StrategyOrderPlaceOrdersInner) GetOrderType() string`

GetOrderType returns the OrderType field if non-nil, zero value otherwise.

### GetOrderTypeOk

`func (o *StrategyOrderPlaceOrdersInner) GetOrderTypeOk() (*string, bool)`

GetOrderTypeOk returns a tuple with the OrderType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderType

`func (o *StrategyOrderPlaceOrdersInner) SetOrderType(v string)`

SetOrderType sets OrderType field to given value.

### HasOrderType

`func (o *StrategyOrderPlaceOrdersInner) HasOrderType() bool`

HasOrderType returns a boolean if a field has been set.

### GetLimitPrice

`func (o *StrategyOrderPlaceOrdersInner) GetLimitPrice() string`

GetLimitPrice returns the LimitPrice field if non-nil, zero value otherwise.

### GetLimitPriceOk

`func (o *StrategyOrderPlaceOrdersInner) GetLimitPriceOk() (*string, bool)`

GetLimitPriceOk returns a tuple with the LimitPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimitPrice

`func (o *StrategyOrderPlaceOrdersInner) SetLimitPrice(v string)`

SetLimitPrice sets LimitPrice field to given value.

### HasLimitPrice

`func (o *StrategyOrderPlaceOrdersInner) HasLimitPrice() bool`

HasLimitPrice returns a boolean if a field has been set.

### GetStopPrice

`func (o *StrategyOrderPlaceOrdersInner) GetStopPrice() string`

GetStopPrice returns the StopPrice field if non-nil, zero value otherwise.

### GetStopPriceOk

`func (o *StrategyOrderPlaceOrdersInner) GetStopPriceOk() (*string, bool)`

GetStopPriceOk returns a tuple with the StopPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStopPrice

`func (o *StrategyOrderPlaceOrdersInner) SetStopPrice(v string)`

SetStopPrice sets StopPrice field to given value.

### HasStopPrice

`func (o *StrategyOrderPlaceOrdersInner) HasStopPrice() bool`

HasStopPrice returns a boolean if a field has been set.

### GetIsAllOrNone

`func (o *StrategyOrderPlaceOrdersInner) GetIsAllOrNone() bool`

GetIsAllOrNone returns the IsAllOrNone field if non-nil, zero value otherwise.

### GetIsAllOrNoneOk

`func (o *StrategyOrderPlaceOrdersInner) GetIsAllOrNoneOk() (*bool, bool)`

GetIsAllOrNoneOk returns a tuple with the IsAllOrNone field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsAllOrNone

`func (o *StrategyOrderPlaceOrdersInner) SetIsAllOrNone(v bool)`

SetIsAllOrNone sets IsAllOrNone field to given value.

### HasIsAllOrNone

`func (o *StrategyOrderPlaceOrdersInner) HasIsAllOrNone() bool`

HasIsAllOrNone returns a boolean if a field has been set.

### GetIsAnonymous

`func (o *StrategyOrderPlaceOrdersInner) GetIsAnonymous() bool`

GetIsAnonymous returns the IsAnonymous field if non-nil, zero value otherwise.

### GetIsAnonymousOk

`func (o *StrategyOrderPlaceOrdersInner) GetIsAnonymousOk() (*bool, bool)`

GetIsAnonymousOk returns a tuple with the IsAnonymous field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsAnonymous

`func (o *StrategyOrderPlaceOrdersInner) SetIsAnonymous(v bool)`

SetIsAnonymous sets IsAnonymous field to given value.

### HasIsAnonymous

`func (o *StrategyOrderPlaceOrdersInner) HasIsAnonymous() bool`

HasIsAnonymous returns a boolean if a field has been set.

### GetIcebergQuantity

`func (o *StrategyOrderPlaceOrdersInner) GetIcebergQuantity() string`

GetIcebergQuantity returns the IcebergQuantity field if non-nil, zero value otherwise.

### GetIcebergQuantityOk

`func (o *StrategyOrderPlaceOrdersInner) GetIcebergQuantityOk() (*string, bool)`

GetIcebergQuantityOk returns a tuple with the IcebergQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIcebergQuantity

`func (o *StrategyOrderPlaceOrdersInner) SetIcebergQuantity(v string)`

SetIcebergQuantity sets IcebergQuantity field to given value.

### HasIcebergQuantity

`func (o *StrategyOrderPlaceOrdersInner) HasIcebergQuantity() bool`

HasIcebergQuantity returns a boolean if a field has been set.

### GetMinQuantity

`func (o *StrategyOrderPlaceOrdersInner) GetMinQuantity() string`

GetMinQuantity returns the MinQuantity field if non-nil, zero value otherwise.

### GetMinQuantityOk

`func (o *StrategyOrderPlaceOrdersInner) GetMinQuantityOk() (*string, bool)`

GetMinQuantityOk returns a tuple with the MinQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinQuantity

`func (o *StrategyOrderPlaceOrdersInner) SetMinQuantity(v string)`

SetMinQuantity sets MinQuantity field to given value.

### HasMinQuantity

`func (o *StrategyOrderPlaceOrdersInner) HasMinQuantity() bool`

HasMinQuantity returns a boolean if a field has been set.

### GetAvgExecPrice

`func (o *StrategyOrderPlaceOrdersInner) GetAvgExecPrice() int32`

GetAvgExecPrice returns the AvgExecPrice field if non-nil, zero value otherwise.

### GetAvgExecPriceOk

`func (o *StrategyOrderPlaceOrdersInner) GetAvgExecPriceOk() (*int32, bool)`

GetAvgExecPriceOk returns a tuple with the AvgExecPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvgExecPrice

`func (o *StrategyOrderPlaceOrdersInner) SetAvgExecPrice(v int32)`

SetAvgExecPrice sets AvgExecPrice field to given value.

### HasAvgExecPrice

`func (o *StrategyOrderPlaceOrdersInner) HasAvgExecPrice() bool`

HasAvgExecPrice returns a boolean if a field has been set.

### GetLastExecPrice

`func (o *StrategyOrderPlaceOrdersInner) GetLastExecPrice() string`

GetLastExecPrice returns the LastExecPrice field if non-nil, zero value otherwise.

### GetLastExecPriceOk

`func (o *StrategyOrderPlaceOrdersInner) GetLastExecPriceOk() (*string, bool)`

GetLastExecPriceOk returns a tuple with the LastExecPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastExecPrice

`func (o *StrategyOrderPlaceOrdersInner) SetLastExecPrice(v string)`

SetLastExecPrice sets LastExecPrice field to given value.

### HasLastExecPrice

`func (o *StrategyOrderPlaceOrdersInner) HasLastExecPrice() bool`

HasLastExecPrice returns a boolean if a field has been set.

### GetSource

`func (o *StrategyOrderPlaceOrdersInner) GetSource() string`

GetSource returns the Source field if non-nil, zero value otherwise.

### GetSourceOk

`func (o *StrategyOrderPlaceOrdersInner) GetSourceOk() (*string, bool)`

GetSourceOk returns a tuple with the Source field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSource

`func (o *StrategyOrderPlaceOrdersInner) SetSource(v string)`

SetSource sets Source field to given value.

### HasSource

`func (o *StrategyOrderPlaceOrdersInner) HasSource() bool`

HasSource returns a boolean if a field has been set.

### GetTimeInForce

`func (o *StrategyOrderPlaceOrdersInner) GetTimeInForce() string`

GetTimeInForce returns the TimeInForce field if non-nil, zero value otherwise.

### GetTimeInForceOk

`func (o *StrategyOrderPlaceOrdersInner) GetTimeInForceOk() (*string, bool)`

GetTimeInForceOk returns a tuple with the TimeInForce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeInForce

`func (o *StrategyOrderPlaceOrdersInner) SetTimeInForce(v string)`

SetTimeInForce sets TimeInForce field to given value.

### HasTimeInForce

`func (o *StrategyOrderPlaceOrdersInner) HasTimeInForce() bool`

HasTimeInForce returns a boolean if a field has been set.

### GetGtdDate

`func (o *StrategyOrderPlaceOrdersInner) GetGtdDate() string`

GetGtdDate returns the GtdDate field if non-nil, zero value otherwise.

### GetGtdDateOk

`func (o *StrategyOrderPlaceOrdersInner) GetGtdDateOk() (*string, bool)`

GetGtdDateOk returns a tuple with the GtdDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGtdDate

`func (o *StrategyOrderPlaceOrdersInner) SetGtdDate(v string)`

SetGtdDate sets GtdDate field to given value.

### HasGtdDate

`func (o *StrategyOrderPlaceOrdersInner) HasGtdDate() bool`

HasGtdDate returns a boolean if a field has been set.

### GetState

`func (o *StrategyOrderPlaceOrdersInner) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *StrategyOrderPlaceOrdersInner) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *StrategyOrderPlaceOrdersInner) SetState(v string)`

SetState sets State field to given value.

### HasState

`func (o *StrategyOrderPlaceOrdersInner) HasState() bool`

HasState returns a boolean if a field has been set.

### GetRejectionReason

`func (o *StrategyOrderPlaceOrdersInner) GetRejectionReason() string`

GetRejectionReason returns the RejectionReason field if non-nil, zero value otherwise.

### GetRejectionReasonOk

`func (o *StrategyOrderPlaceOrdersInner) GetRejectionReasonOk() (*string, bool)`

GetRejectionReasonOk returns a tuple with the RejectionReason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRejectionReason

`func (o *StrategyOrderPlaceOrdersInner) SetRejectionReason(v string)`

SetRejectionReason sets RejectionReason field to given value.

### HasRejectionReason

`func (o *StrategyOrderPlaceOrdersInner) HasRejectionReason() bool`

HasRejectionReason returns a boolean if a field has been set.

### GetChainId

`func (o *StrategyOrderPlaceOrdersInner) GetChainId() int32`

GetChainId returns the ChainId field if non-nil, zero value otherwise.

### GetChainIdOk

`func (o *StrategyOrderPlaceOrdersInner) GetChainIdOk() (*int32, bool)`

GetChainIdOk returns a tuple with the ChainId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChainId

`func (o *StrategyOrderPlaceOrdersInner) SetChainId(v int32)`

SetChainId sets ChainId field to given value.

### HasChainId

`func (o *StrategyOrderPlaceOrdersInner) HasChainId() bool`

HasChainId returns a boolean if a field has been set.

### GetCreationTime

`func (o *StrategyOrderPlaceOrdersInner) GetCreationTime() string`

GetCreationTime returns the CreationTime field if non-nil, zero value otherwise.

### GetCreationTimeOk

`func (o *StrategyOrderPlaceOrdersInner) GetCreationTimeOk() (*string, bool)`

GetCreationTimeOk returns a tuple with the CreationTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreationTime

`func (o *StrategyOrderPlaceOrdersInner) SetCreationTime(v string)`

SetCreationTime sets CreationTime field to given value.

### HasCreationTime

`func (o *StrategyOrderPlaceOrdersInner) HasCreationTime() bool`

HasCreationTime returns a boolean if a field has been set.

### GetUpdateTime

`func (o *StrategyOrderPlaceOrdersInner) GetUpdateTime() string`

GetUpdateTime returns the UpdateTime field if non-nil, zero value otherwise.

### GetUpdateTimeOk

`func (o *StrategyOrderPlaceOrdersInner) GetUpdateTimeOk() (*string, bool)`

GetUpdateTimeOk returns a tuple with the UpdateTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdateTime

`func (o *StrategyOrderPlaceOrdersInner) SetUpdateTime(v string)`

SetUpdateTime sets UpdateTime field to given value.

### HasUpdateTime

`func (o *StrategyOrderPlaceOrdersInner) HasUpdateTime() bool`

HasUpdateTime returns a boolean if a field has been set.

### GetNotes

`func (o *StrategyOrderPlaceOrdersInner) GetNotes() string`

GetNotes returns the Notes field if non-nil, zero value otherwise.

### GetNotesOk

`func (o *StrategyOrderPlaceOrdersInner) GetNotesOk() (*string, bool)`

GetNotesOk returns a tuple with the Notes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNotes

`func (o *StrategyOrderPlaceOrdersInner) SetNotes(v string)`

SetNotes sets Notes field to given value.

### HasNotes

`func (o *StrategyOrderPlaceOrdersInner) HasNotes() bool`

HasNotes returns a boolean if a field has been set.

### GetPrimaryRoute

`func (o *StrategyOrderPlaceOrdersInner) GetPrimaryRoute() string`

GetPrimaryRoute returns the PrimaryRoute field if non-nil, zero value otherwise.

### GetPrimaryRouteOk

`func (o *StrategyOrderPlaceOrdersInner) GetPrimaryRouteOk() (*string, bool)`

GetPrimaryRouteOk returns a tuple with the PrimaryRoute field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrimaryRoute

`func (o *StrategyOrderPlaceOrdersInner) SetPrimaryRoute(v string)`

SetPrimaryRoute sets PrimaryRoute field to given value.

### HasPrimaryRoute

`func (o *StrategyOrderPlaceOrdersInner) HasPrimaryRoute() bool`

HasPrimaryRoute returns a boolean if a field has been set.

### GetSecondaryRoute

`func (o *StrategyOrderPlaceOrdersInner) GetSecondaryRoute() string`

GetSecondaryRoute returns the SecondaryRoute field if non-nil, zero value otherwise.

### GetSecondaryRouteOk

`func (o *StrategyOrderPlaceOrdersInner) GetSecondaryRouteOk() (*string, bool)`

GetSecondaryRouteOk returns a tuple with the SecondaryRoute field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSecondaryRoute

`func (o *StrategyOrderPlaceOrdersInner) SetSecondaryRoute(v string)`

SetSecondaryRoute sets SecondaryRoute field to given value.

### HasSecondaryRoute

`func (o *StrategyOrderPlaceOrdersInner) HasSecondaryRoute() bool`

HasSecondaryRoute returns a boolean if a field has been set.

### GetOrderRoute

`func (o *StrategyOrderPlaceOrdersInner) GetOrderRoute() string`

GetOrderRoute returns the OrderRoute field if non-nil, zero value otherwise.

### GetOrderRouteOk

`func (o *StrategyOrderPlaceOrdersInner) GetOrderRouteOk() (*string, bool)`

GetOrderRouteOk returns a tuple with the OrderRoute field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderRoute

`func (o *StrategyOrderPlaceOrdersInner) SetOrderRoute(v string)`

SetOrderRoute sets OrderRoute field to given value.

### HasOrderRoute

`func (o *StrategyOrderPlaceOrdersInner) HasOrderRoute() bool`

HasOrderRoute returns a boolean if a field has been set.

### GetVenueHoldingOrder

`func (o *StrategyOrderPlaceOrdersInner) GetVenueHoldingOrder() string`

GetVenueHoldingOrder returns the VenueHoldingOrder field if non-nil, zero value otherwise.

### GetVenueHoldingOrderOk

`func (o *StrategyOrderPlaceOrdersInner) GetVenueHoldingOrderOk() (*string, bool)`

GetVenueHoldingOrderOk returns a tuple with the VenueHoldingOrder field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVenueHoldingOrder

`func (o *StrategyOrderPlaceOrdersInner) SetVenueHoldingOrder(v string)`

SetVenueHoldingOrder sets VenueHoldingOrder field to given value.

### HasVenueHoldingOrder

`func (o *StrategyOrderPlaceOrdersInner) HasVenueHoldingOrder() bool`

HasVenueHoldingOrder returns a boolean if a field has been set.

### GetComissionCharged

`func (o *StrategyOrderPlaceOrdersInner) GetComissionCharged() int32`

GetComissionCharged returns the ComissionCharged field if non-nil, zero value otherwise.

### GetComissionChargedOk

`func (o *StrategyOrderPlaceOrdersInner) GetComissionChargedOk() (*int32, bool)`

GetComissionChargedOk returns a tuple with the ComissionCharged field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetComissionCharged

`func (o *StrategyOrderPlaceOrdersInner) SetComissionCharged(v int32)`

SetComissionCharged sets ComissionCharged field to given value.

### HasComissionCharged

`func (o *StrategyOrderPlaceOrdersInner) HasComissionCharged() bool`

HasComissionCharged returns a boolean if a field has been set.

### GetExchangeOrderId

`func (o *StrategyOrderPlaceOrdersInner) GetExchangeOrderId() string`

GetExchangeOrderId returns the ExchangeOrderId field if non-nil, zero value otherwise.

### GetExchangeOrderIdOk

`func (o *StrategyOrderPlaceOrdersInner) GetExchangeOrderIdOk() (*string, bool)`

GetExchangeOrderIdOk returns a tuple with the ExchangeOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeOrderId

`func (o *StrategyOrderPlaceOrdersInner) SetExchangeOrderId(v string)`

SetExchangeOrderId sets ExchangeOrderId field to given value.

### HasExchangeOrderId

`func (o *StrategyOrderPlaceOrdersInner) HasExchangeOrderId() bool`

HasExchangeOrderId returns a boolean if a field has been set.

### GetIsSignificantShareHolder

`func (o *StrategyOrderPlaceOrdersInner) GetIsSignificantShareHolder() bool`

GetIsSignificantShareHolder returns the IsSignificantShareHolder field if non-nil, zero value otherwise.

### GetIsSignificantShareHolderOk

`func (o *StrategyOrderPlaceOrdersInner) GetIsSignificantShareHolderOk() (*bool, bool)`

GetIsSignificantShareHolderOk returns a tuple with the IsSignificantShareHolder field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsSignificantShareHolder

`func (o *StrategyOrderPlaceOrdersInner) SetIsSignificantShareHolder(v bool)`

SetIsSignificantShareHolder sets IsSignificantShareHolder field to given value.

### HasIsSignificantShareHolder

`func (o *StrategyOrderPlaceOrdersInner) HasIsSignificantShareHolder() bool`

HasIsSignificantShareHolder returns a boolean if a field has been set.

### GetIsInsider

`func (o *StrategyOrderPlaceOrdersInner) GetIsInsider() bool`

GetIsInsider returns the IsInsider field if non-nil, zero value otherwise.

### GetIsInsiderOk

`func (o *StrategyOrderPlaceOrdersInner) GetIsInsiderOk() (*bool, bool)`

GetIsInsiderOk returns a tuple with the IsInsider field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsInsider

`func (o *StrategyOrderPlaceOrdersInner) SetIsInsider(v bool)`

SetIsInsider sets IsInsider field to given value.

### HasIsInsider

`func (o *StrategyOrderPlaceOrdersInner) HasIsInsider() bool`

HasIsInsider returns a boolean if a field has been set.

### GetIsLimitOffsetInDollar

`func (o *StrategyOrderPlaceOrdersInner) GetIsLimitOffsetInDollar() bool`

GetIsLimitOffsetInDollar returns the IsLimitOffsetInDollar field if non-nil, zero value otherwise.

### GetIsLimitOffsetInDollarOk

`func (o *StrategyOrderPlaceOrdersInner) GetIsLimitOffsetInDollarOk() (*bool, bool)`

GetIsLimitOffsetInDollarOk returns a tuple with the IsLimitOffsetInDollar field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsLimitOffsetInDollar

`func (o *StrategyOrderPlaceOrdersInner) SetIsLimitOffsetInDollar(v bool)`

SetIsLimitOffsetInDollar sets IsLimitOffsetInDollar field to given value.

### HasIsLimitOffsetInDollar

`func (o *StrategyOrderPlaceOrdersInner) HasIsLimitOffsetInDollar() bool`

HasIsLimitOffsetInDollar returns a boolean if a field has been set.

### GetUserId

`func (o *StrategyOrderPlaceOrdersInner) GetUserId() int32`

GetUserId returns the UserId field if non-nil, zero value otherwise.

### GetUserIdOk

`func (o *StrategyOrderPlaceOrdersInner) GetUserIdOk() (*int32, bool)`

GetUserIdOk returns a tuple with the UserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserId

`func (o *StrategyOrderPlaceOrdersInner) SetUserId(v int32)`

SetUserId sets UserId field to given value.

### HasUserId

`func (o *StrategyOrderPlaceOrdersInner) HasUserId() bool`

HasUserId returns a boolean if a field has been set.

### GetPlacementCommission

`func (o *StrategyOrderPlaceOrdersInner) GetPlacementCommission() string`

GetPlacementCommission returns the PlacementCommission field if non-nil, zero value otherwise.

### GetPlacementCommissionOk

`func (o *StrategyOrderPlaceOrdersInner) GetPlacementCommissionOk() (*string, bool)`

GetPlacementCommissionOk returns a tuple with the PlacementCommission field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPlacementCommission

`func (o *StrategyOrderPlaceOrdersInner) SetPlacementCommission(v string)`

SetPlacementCommission sets PlacementCommission field to given value.

### HasPlacementCommission

`func (o *StrategyOrderPlaceOrdersInner) HasPlacementCommission() bool`

HasPlacementCommission returns a boolean if a field has been set.

### GetLegs

`func (o *StrategyOrderPlaceOrdersInner) GetLegs() []StrategyOrderPlaceOrdersInnerLegsInner`

GetLegs returns the Legs field if non-nil, zero value otherwise.

### GetLegsOk

`func (o *StrategyOrderPlaceOrdersInner) GetLegsOk() (*[]StrategyOrderPlaceOrdersInnerLegsInner, bool)`

GetLegsOk returns a tuple with the Legs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLegs

`func (o *StrategyOrderPlaceOrdersInner) SetLegs(v []StrategyOrderPlaceOrdersInnerLegsInner)`

SetLegs sets Legs field to given value.

### HasLegs

`func (o *StrategyOrderPlaceOrdersInner) HasLegs() bool`

HasLegs returns a boolean if a field has been set.

### GetStrategyType

`func (o *StrategyOrderPlaceOrdersInner) GetStrategyType() string`

GetStrategyType returns the StrategyType field if non-nil, zero value otherwise.

### GetStrategyTypeOk

`func (o *StrategyOrderPlaceOrdersInner) GetStrategyTypeOk() (*string, bool)`

GetStrategyTypeOk returns a tuple with the StrategyType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStrategyType

`func (o *StrategyOrderPlaceOrdersInner) SetStrategyType(v string)`

SetStrategyType sets StrategyType field to given value.

### HasStrategyType

`func (o *StrategyOrderPlaceOrdersInner) HasStrategyType() bool`

HasStrategyType returns a boolean if a field has been set.

### GetTriggerStopPrice

`func (o *StrategyOrderPlaceOrdersInner) GetTriggerStopPrice() string`

GetTriggerStopPrice returns the TriggerStopPrice field if non-nil, zero value otherwise.

### GetTriggerStopPriceOk

`func (o *StrategyOrderPlaceOrdersInner) GetTriggerStopPriceOk() (*string, bool)`

GetTriggerStopPriceOk returns a tuple with the TriggerStopPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTriggerStopPrice

`func (o *StrategyOrderPlaceOrdersInner) SetTriggerStopPrice(v string)`

SetTriggerStopPrice sets TriggerStopPrice field to given value.

### HasTriggerStopPrice

`func (o *StrategyOrderPlaceOrdersInner) HasTriggerStopPrice() bool`

HasTriggerStopPrice returns a boolean if a field has been set.

### GetOrderGroupId

`func (o *StrategyOrderPlaceOrdersInner) GetOrderGroupId() int32`

GetOrderGroupId returns the OrderGroupId field if non-nil, zero value otherwise.

### GetOrderGroupIdOk

`func (o *StrategyOrderPlaceOrdersInner) GetOrderGroupIdOk() (*int32, bool)`

GetOrderGroupIdOk returns a tuple with the OrderGroupId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderGroupId

`func (o *StrategyOrderPlaceOrdersInner) SetOrderGroupId(v int32)`

SetOrderGroupId sets OrderGroupId field to given value.

### HasOrderGroupId

`func (o *StrategyOrderPlaceOrdersInner) HasOrderGroupId() bool`

HasOrderGroupId returns a boolean if a field has been set.

### GetOrderClass

`func (o *StrategyOrderPlaceOrdersInner) GetOrderClass() string`

GetOrderClass returns the OrderClass field if non-nil, zero value otherwise.

### GetOrderClassOk

`func (o *StrategyOrderPlaceOrdersInner) GetOrderClassOk() (*string, bool)`

GetOrderClassOk returns a tuple with the OrderClass field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderClass

`func (o *StrategyOrderPlaceOrdersInner) SetOrderClass(v string)`

SetOrderClass sets OrderClass field to given value.

### HasOrderClass

`func (o *StrategyOrderPlaceOrdersInner) HasOrderClass() bool`

HasOrderClass returns a boolean if a field has been set.

### GetIsCrossZero

`func (o *StrategyOrderPlaceOrdersInner) GetIsCrossZero() bool`

GetIsCrossZero returns the IsCrossZero field if non-nil, zero value otherwise.

### GetIsCrossZeroOk

`func (o *StrategyOrderPlaceOrdersInner) GetIsCrossZeroOk() (*bool, bool)`

GetIsCrossZeroOk returns a tuple with the IsCrossZero field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsCrossZero

`func (o *StrategyOrderPlaceOrdersInner) SetIsCrossZero(v bool)`

SetIsCrossZero sets IsCrossZero field to given value.

### HasIsCrossZero

`func (o *StrategyOrderPlaceOrdersInner) HasIsCrossZero() bool`

HasIsCrossZero returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


