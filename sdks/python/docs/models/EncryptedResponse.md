# snaptrade_client.model.encrypted_response.EncryptedResponse

This response consists of 2 different components that must be decrypted to obtain the decrypted message  * Decrypting the encryptedSharedKey    The encrypted shared key is a shared key that was randomly generated by SnapTrade and encrypted using the users SSH public key provided when registering the user   It is needed to decrypt the message in step 2.    To decrypt the shared key, the user should have access to their SSH private key stored locally in their device    An example Python code on how to decrypt the shared key is shown below    ```   def decrypt_rsa_message(self, encrypted_message):       from Crypto.Cipher import PKCS1_OAEP       from Crypto.PublicKey import RSA       from base64 import b64decode        f = open('private.pem', 'r')       private_key = RSA.import_key(f.read())       cipher = PKCS1_OAEP.new(private_key)        return cipher.decrypt(b64decode(encrypted_message.encode())).decode()   ```  * Decrypting the encryptedMessageData     The data meant to be returned by an endpoint can be obtained by decrypting the encrypted message     An encrypted message is a message that is encrypted using AES - MODE OCB with the shared key obtained in step one    An example code to decrypt the encrypted message is shown below    ```   def decrypt_aes_message(self, shared_key, encrypted_message):       from Crypto.Cipher import AES       from base64 import b64decode        encrypted_msg = b64decode(encrypted_message[\"encryptedMessage\"].encode())       tag = b64decode(encrypted_message[\"tag\"].encode())       nonce = b64decode(encrypted_message[\"nonce\"].encode())       cipher = AES.new(shared_key.encode(), AES.MODE_OCB, nonce=nonce)        return cipher.decrypt_and_verify(encrypted_msg, tag).decode()   ``` 

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This response consists of 2 different components that must be decrypted to obtain the decrypted message  * Decrypting the encryptedSharedKey    The encrypted shared key is a shared key that was randomly generated by SnapTrade and encrypted using the users SSH public key provided when registering the user   It is needed to decrypt the message in step 2.    To decrypt the shared key, the user should have access to their SSH private key stored locally in their device    An example Python code on how to decrypt the shared key is shown below    &#x60;&#x60;&#x60;   def decrypt_rsa_message(self, encrypted_message):       from Crypto.Cipher import PKCS1_OAEP       from Crypto.PublicKey import RSA       from base64 import b64decode        f &#x3D; open(&#x27;private.pem&#x27;, &#x27;r&#x27;)       private_key &#x3D; RSA.import_key(f.read())       cipher &#x3D; PKCS1_OAEP.new(private_key)        return cipher.decrypt(b64decode(encrypted_message.encode())).decode()   &#x60;&#x60;&#x60;  * Decrypting the encryptedMessageData     The data meant to be returned by an endpoint can be obtained by decrypting the encrypted message     An encrypted message is a message that is encrypted using AES - MODE OCB with the shared key obtained in step one    An example code to decrypt the encrypted message is shown below    &#x60;&#x60;&#x60;   def decrypt_aes_message(self, shared_key, encrypted_message):       from Crypto.Cipher import AES       from base64 import b64decode        encrypted_msg &#x3D; b64decode(encrypted_message[\&quot;encryptedMessage\&quot;].encode())       tag &#x3D; b64decode(encrypted_message[\&quot;tag\&quot;].encode())       nonce &#x3D; b64decode(encrypted_message[\&quot;nonce\&quot;].encode())       cipher &#x3D; AES.new(shared_key.encode(), AES.MODE_OCB, nonce&#x3D;nonce)        return cipher.decrypt_and_verify(encrypted_msg, tag).decode()   &#x60;&#x60;&#x60;  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**encryptedSharedKey** | str,  | str,  |  | [optional] 
**[encryptedMessageData](#encryptedMessageData)** | dict, frozendict.frozendict,  | frozendict.frozendict,  |  | [optional] 

# encryptedMessageData

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**encryptedMessage** | str,  | str,  |  | [optional] 
**tag** | str,  | str,  |  | [optional] 
**nonce** | str,  | str,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)
