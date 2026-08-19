# SnapTrade.Net.Model.UserAumPercentileObjectNullable
A user's AUM placement within a single SnapTrade customer's book

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Bucket** | **string** | The band the user falls into. Deliberately coarse: the underlying totals are only as current as each brokerage&#39;s last sync, so an exact percentile would imply more precision than the data supports.  | [optional] 
**Percentile** | **int** | The percent of the cohort the user&#39;s assets are strictly above, 0-100. Integer by design: the distribution is stored as 101 interpolated cutoffs, so a fractional percentile would not mean anything.  Prefer &#x60;bucket&#x60; for anything you display prominently. The distribution is recomputed monthly, so a user&#39;s percentile can move a few points on its own as other users&#39; holdings refresh, while their bucket stays put. Users tied on the same total all receive the lowest percentile that total spans.  | [optional] 
**CohortSize** | **int** | Number of your users the distribution was computed from. | [optional] 
**AsOf** | **DateTime** | The month whose distribution produced this placement. | [optional] 
**Currency** | **string** | The currency the distribution was computed in. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

