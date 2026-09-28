

# InstitutionConnection

How end users connect to the institution and what the connection allows.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**methods** | [**List&lt;MethodsEnum&gt;**](#List&lt;MethodsEnum&gt;) | Ways an end user can connect. - &#x60;OAUTH&#x60;: the user signs in on the institution&#39;s own site and approves access. - &#x60;CREDENTIALS&#x60;: the user enters their login details in the SnapTrade Connection Portal. - &#x60;API_KEY&#x60;: the user creates an API key at the institution and pastes it in.  |  |
|**scopes** | [**List&lt;ScopesEnum&gt;**](#List&lt;ScopesEnum&gt;) | What a connection can do. &#x60;READ&#x60; is always present. - &#x60;READ&#x60;: read accounts, balances, positions and activity. - &#x60;TRADE&#x60;: place orders.  |  |



## Enum: List&lt;MethodsEnum&gt;

| Name | Value |
|---- | -----|
| OAUTH | &quot;OAUTH&quot; |
| CREDENTIALS | &quot;CREDENTIALS&quot; |
| API_KEY | &quot;API_KEY&quot; |



## Enum: List&lt;ScopesEnum&gt;

| Name | Value |
|---- | -----|
| READ | &quot;READ&quot; |
| TRADE | &quot;TRADE&quot; |



