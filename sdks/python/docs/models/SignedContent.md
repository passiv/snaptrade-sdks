# snaptrade_client.model.signed_content.SignedContent

Signed content requires 3 key-value pairs * content -> Content included in request body, set to null if no content is included. Sort keys in content alphabetically * path -> Url path of request submitted * query -> Query params included in requests After preparing the key-value pairs, sort them alphabetically and convert them into a string. Note: Remove any extra whitespace characters and delimiters from the signed content. For example, some JSON rendering engines will produce output like this:   -- `{\"blue\": \"moon\", \"hello\": \"world\"}` To produce the correct signature, the JSON should be processed to look like this:   -- `{\"blue\":\"moon\",\"hello\":\"world\"}` 

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  | Signed content requires 3 key-value pairs * content -&gt; Content included in request body, set to null if no content is included. Sort keys in content alphabetically * path -&gt; Url path of request submitted * query -&gt; Query params included in requests After preparing the key-value pairs, sort them alphabetically and convert them into a string. Note: Remove any extra whitespace characters and delimiters from the signed content. For example, some JSON rendering engines will produce output like this:   -- &#x60;{\&quot;blue\&quot;: \&quot;moon\&quot;, \&quot;hello\&quot;: \&quot;world\&quot;}&#x60; To produce the correct signature, the JSON should be processed to look like this:   -- &#x60;{\&quot;blue\&quot;:\&quot;moon\&quot;,\&quot;hello\&quot;:\&quot;world\&quot;}&#x60;  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

