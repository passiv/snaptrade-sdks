/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

API version: 1.0.0
Contact: api@snaptrade.com
*/

// Code generated by Konfig (https://konfigthis.com); DO NOT EDIT.

package snaptrade

import (
	"encoding/json"
)

// EncryptedResponse This response consists of 2 different components that must be decrypted to obtain the decrypted message  * Decrypting the encryptedSharedKey    The encrypted shared key is a shared key that was randomly generated by SnapTrade and encrypted using the users SSH public key provided when registering the user   It is needed to decrypt the message in step 2.    To decrypt the shared key, the user should have access to their SSH private key stored locally in their device    An example Python code on how to decrypt the shared key is shown below    ```   def decrypt_rsa_message(self, encrypted_message):       from Crypto.Cipher import PKCS1_OAEP       from Crypto.PublicKey import RSA       from base64 import b64decode        f = open('private.pem', 'r')       private_key = RSA.import_key(f.read())       cipher = PKCS1_OAEP.new(private_key)        return cipher.decrypt(b64decode(encrypted_message.encode())).decode()   ```  * Decrypting the encryptedMessageData     The data meant to be returned by an endpoint can be obtained by decrypting the encrypted message     An encrypted message is a message that is encrypted using AES - MODE OCB with the shared key obtained in step one    An example code to decrypt the encrypted message is shown below    ```   def decrypt_aes_message(self, shared_key, encrypted_message):       from Crypto.Cipher import AES       from base64 import b64decode        encrypted_msg = b64decode(encrypted_message[\"encryptedMessage\"].encode())       tag = b64decode(encrypted_message[\"tag\"].encode())       nonce = b64decode(encrypted_message[\"nonce\"].encode())       cipher = AES.new(shared_key.encode(), AES.MODE_OCB, nonce=nonce)        return cipher.decrypt_and_verify(encrypted_msg, tag).decode()   ``` 
type EncryptedResponse struct {
	EncryptedSharedKey *string `json:"encryptedSharedKey,omitempty"`
	EncryptedMessageData *EncryptedResponseEncryptedMessageData `json:"encryptedMessageData,omitempty"`
}

// NewEncryptedResponse instantiates a new EncryptedResponse object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewEncryptedResponse() *EncryptedResponse {
	this := EncryptedResponse{}
	return &this
}

// NewEncryptedResponseWithDefaults instantiates a new EncryptedResponse object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewEncryptedResponseWithDefaults() *EncryptedResponse {
	this := EncryptedResponse{}
	return &this
}

// GetEncryptedSharedKey returns the EncryptedSharedKey field value if set, zero value otherwise.
func (o *EncryptedResponse) GetEncryptedSharedKey() string {
	if o == nil || isNil(o.EncryptedSharedKey) {
		var ret string
		return ret
	}
	return *o.EncryptedSharedKey
}

// GetEncryptedSharedKeyOk returns a tuple with the EncryptedSharedKey field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *EncryptedResponse) GetEncryptedSharedKeyOk() (*string, bool) {
	if o == nil || isNil(o.EncryptedSharedKey) {
    return nil, false
	}
	return o.EncryptedSharedKey, true
}

// HasEncryptedSharedKey returns a boolean if a field has been set.
func (o *EncryptedResponse) HasEncryptedSharedKey() bool {
	if o != nil && !isNil(o.EncryptedSharedKey) {
		return true
	}

	return false
}

// SetEncryptedSharedKey gets a reference to the given string and assigns it to the EncryptedSharedKey field.
func (o *EncryptedResponse) SetEncryptedSharedKey(v string) {
	o.EncryptedSharedKey = &v
}

// GetEncryptedMessageData returns the EncryptedMessageData field value if set, zero value otherwise.
func (o *EncryptedResponse) GetEncryptedMessageData() EncryptedResponseEncryptedMessageData {
	if o == nil || isNil(o.EncryptedMessageData) {
		var ret EncryptedResponseEncryptedMessageData
		return ret
	}
	return *o.EncryptedMessageData
}

// GetEncryptedMessageDataOk returns a tuple with the EncryptedMessageData field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *EncryptedResponse) GetEncryptedMessageDataOk() (*EncryptedResponseEncryptedMessageData, bool) {
	if o == nil || isNil(o.EncryptedMessageData) {
    return nil, false
	}
	return o.EncryptedMessageData, true
}

// HasEncryptedMessageData returns a boolean if a field has been set.
func (o *EncryptedResponse) HasEncryptedMessageData() bool {
	if o != nil && !isNil(o.EncryptedMessageData) {
		return true
	}

	return false
}

// SetEncryptedMessageData gets a reference to the given EncryptedResponseEncryptedMessageData and assigns it to the EncryptedMessageData field.
func (o *EncryptedResponse) SetEncryptedMessageData(v EncryptedResponseEncryptedMessageData) {
	o.EncryptedMessageData = &v
}

func (o EncryptedResponse) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.EncryptedSharedKey) {
		toSerialize["encryptedSharedKey"] = o.EncryptedSharedKey
	}
	if !isNil(o.EncryptedMessageData) {
		toSerialize["encryptedMessageData"] = o.EncryptedMessageData
	}
	return json.Marshal(toSerialize)
}

type NullableEncryptedResponse struct {
	value *EncryptedResponse
	isSet bool
}

func (v NullableEncryptedResponse) Get() *EncryptedResponse {
	return v.value
}

func (v *NullableEncryptedResponse) Set(val *EncryptedResponse) {
	v.value = val
	v.isSet = true
}

func (v NullableEncryptedResponse) IsSet() bool {
	return v.isSet
}

func (v *NullableEncryptedResponse) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableEncryptedResponse(val *EncryptedResponse) *NullableEncryptedResponse {
	return &NullableEncryptedResponse{value: val, isSet: true}
}

func (v NullableEncryptedResponse) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableEncryptedResponse) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


