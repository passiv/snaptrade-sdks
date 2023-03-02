/* tslint:disable */
/* eslint-disable */
/**
 * SnapTrade
 * Connect brokerage accounts to your app for live positions and trading
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: api@snaptrade.com
 *
 * NOTE: This file is auto generated by Konfig (https://konfigthis.com).
 * https://konfigthis.com
 * Do not edit the class manually.
 */

// May contain unused imports in some cases
// @ts-ignore
import { EncryptedResponseEncryptedMessageData } from './encrypted-response-encrypted-message-data';

/**
 * This response consists of 2 different components that must be decrypted to obtain the decrypted message  * Decrypting the encryptedSharedKey    The encrypted shared key is a shared key that was randomly generated by SnapTrade and encrypted using the users SSH public key provided when registering the user   It is needed to decrypt the message in step 2.    To decrypt the shared key, the user should have access to their SSH private key stored locally in their device    An example Python code on how to decrypt the shared key is shown below    ```   def decrypt_rsa_message(self, encrypted_message):       from Crypto.Cipher import PKCS1_OAEP       from Crypto.PublicKey import RSA       from base64 import b64decode        f = open(\'private.pem\', \'r\')       private_key = RSA.import_key(f.read())       cipher = PKCS1_OAEP.new(private_key)        return cipher.decrypt(b64decode(encrypted_message.encode())).decode()   ```  * Decrypting the encryptedMessageData     The data meant to be returned by an endpoint can be obtained by decrypting the encrypted message     An encrypted message is a message that is encrypted using AES - MODE OCB with the shared key obtained in step one    An example code to decrypt the encrypted message is shown below    ```   def decrypt_aes_message(self, shared_key, encrypted_message):       from Crypto.Cipher import AES       from base64 import b64decode        encrypted_msg = b64decode(encrypted_message[\"encryptedMessage\"].encode())       tag = b64decode(encrypted_message[\"tag\"].encode())       nonce = b64decode(encrypted_message[\"nonce\"].encode())       cipher = AES.new(shared_key.encode(), AES.MODE_OCB, nonce=nonce)        return cipher.decrypt_and_verify(encrypted_msg, tag).decode()   ``` 
 * @export
 * @interface EncryptedResponse
 */
export interface EncryptedResponse {
    /**
     * 
     * @type {string}
     * @memberof EncryptedResponse
     */
    'encryptedSharedKey'?: string;
    /**
     * 
     * @type {EncryptedResponseEncryptedMessageData}
     * @memberof EncryptedResponse
     */
    'encryptedMessageData'?: EncryptedResponseEncryptedMessageData;
}
