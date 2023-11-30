/*
 * SnapTrade
 * Connect brokerage accounts to your app for live positions and trading
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: api@snaptrade.com
 *
 * NOTE: This class is auto generated by Konfig (https://konfigthis.com).
 * Do not edit the class manually.
 */


package com.konfigthis.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.konfigthis.client.model.EncryptedResponseEncryptedMessageData;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import org.apache.commons.lang3.StringUtils;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import com.konfigthis.client.JSON;

/**
 * This response consists of 2 different components that must be decrypted to obtain the decrypted message  * Decrypting the encryptedSharedKey    The encrypted shared key is a shared key that was randomly generated by SnapTrade and encrypted using the users SSH public key provided when registering the user   It is needed to decrypt the message in step 2.    To decrypt the shared key, the user should have access to their SSH private key stored locally in their device    An example Python code on how to decrypt the shared key is shown below    &#x60;&#x60;&#x60;   def decrypt_rsa_message(self, encrypted_message):       from Crypto.Cipher import PKCS1_OAEP       from Crypto.PublicKey import RSA       from base64 import b64decode        f &#x3D; open(&#39;private.pem&#39;, &#39;r&#39;)       private_key &#x3D; RSA.import_key(f.read())       cipher &#x3D; PKCS1_OAEP.new(private_key)        return cipher.decrypt(b64decode(encrypted_message.encode())).decode()   &#x60;&#x60;&#x60;  * Decrypting the encryptedMessageData     The data meant to be returned by an endpoint can be obtained by decrypting the encrypted message     An encrypted message is a message that is encrypted using AES - MODE OCB with the shared key obtained in step one    An example code to decrypt the encrypted message is shown below    &#x60;&#x60;&#x60;   def decrypt_aes_message(self, shared_key, encrypted_message):       from Crypto.Cipher import AES       from base64 import b64decode        encrypted_msg &#x3D; b64decode(encrypted_message[\&quot;encryptedMessage\&quot;].encode())       tag &#x3D; b64decode(encrypted_message[\&quot;tag\&quot;].encode())       nonce &#x3D; b64decode(encrypted_message[\&quot;nonce\&quot;].encode())       cipher &#x3D; AES.new(shared_key.encode(), AES.MODE_OCB, nonce&#x3D;nonce)        return cipher.decrypt_and_verify(encrypted_msg, tag).decode()   &#x60;&#x60;&#x60; 
 */
@ApiModel(description = "This response consists of 2 different components that must be decrypted to obtain the decrypted message  * Decrypting the encryptedSharedKey    The encrypted shared key is a shared key that was randomly generated by SnapTrade and encrypted using the users SSH public key provided when registering the user   It is needed to decrypt the message in step 2.    To decrypt the shared key, the user should have access to their SSH private key stored locally in their device    An example Python code on how to decrypt the shared key is shown below    ```   def decrypt_rsa_message(self, encrypted_message):       from Crypto.Cipher import PKCS1_OAEP       from Crypto.PublicKey import RSA       from base64 import b64decode        f = open('private.pem', 'r')       private_key = RSA.import_key(f.read())       cipher = PKCS1_OAEP.new(private_key)        return cipher.decrypt(b64decode(encrypted_message.encode())).decode()   ```  * Decrypting the encryptedMessageData     The data meant to be returned by an endpoint can be obtained by decrypting the encrypted message     An encrypted message is a message that is encrypted using AES - MODE OCB with the shared key obtained in step one    An example code to decrypt the encrypted message is shown below    ```   def decrypt_aes_message(self, shared_key, encrypted_message):       from Crypto.Cipher import AES       from base64 import b64decode        encrypted_msg = b64decode(encrypted_message[\"encryptedMessage\"].encode())       tag = b64decode(encrypted_message[\"tag\"].encode())       nonce = b64decode(encrypted_message[\"nonce\"].encode())       cipher = AES.new(shared_key.encode(), AES.MODE_OCB, nonce=nonce)        return cipher.decrypt_and_verify(encrypted_msg, tag).decode()   ``` ")@javax.annotation.Generated(value = "Generated by https://konfigthis.com")
public class EncryptedResponse {
  public static final String SERIALIZED_NAME_ENCRYPTED_SHARED_KEY = "encryptedSharedKey";
  @SerializedName(SERIALIZED_NAME_ENCRYPTED_SHARED_KEY)
  private String encryptedSharedKey;

  public static final String SERIALIZED_NAME_ENCRYPTED_MESSAGE_DATA = "encryptedMessageData";
  @SerializedName(SERIALIZED_NAME_ENCRYPTED_MESSAGE_DATA)
  private EncryptedResponseEncryptedMessageData encryptedMessageData;

  public EncryptedResponse() {
  }

  public EncryptedResponse encryptedSharedKey(String encryptedSharedKey) {
    
    
    
    
    this.encryptedSharedKey = encryptedSharedKey;
    return this;
  }

   /**
   * Get encryptedSharedKey
   * @return encryptedSharedKey
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "5UEaY9QGzcNTr8y2jGDUI79jY1OdfK9x", value = "")

  public String getEncryptedSharedKey() {
    return encryptedSharedKey;
  }


  public void setEncryptedSharedKey(String encryptedSharedKey) {
    
    
    
    this.encryptedSharedKey = encryptedSharedKey;
  }


  public EncryptedResponse encryptedMessageData(EncryptedResponseEncryptedMessageData encryptedMessageData) {
    
    
    
    
    this.encryptedMessageData = encryptedMessageData;
    return this;
  }

   /**
   * Get encryptedMessageData
   * @return encryptedMessageData
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public EncryptedResponseEncryptedMessageData getEncryptedMessageData() {
    return encryptedMessageData;
  }


  public void setEncryptedMessageData(EncryptedResponseEncryptedMessageData encryptedMessageData) {
    
    
    
    this.encryptedMessageData = encryptedMessageData;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    EncryptedResponse encryptedResponse = (EncryptedResponse) o;
    return Objects.equals(this.encryptedSharedKey, encryptedResponse.encryptedSharedKey) &&
        Objects.equals(this.encryptedMessageData, encryptedResponse.encryptedMessageData);
  }

  @Override
  public int hashCode() {
    return Objects.hash(encryptedSharedKey, encryptedMessageData);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class EncryptedResponse {\n");
    sb.append("    encryptedSharedKey: ").append(toIndentedString(encryptedSharedKey)).append("\n");
    sb.append("    encryptedMessageData: ").append(toIndentedString(encryptedMessageData)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("encryptedSharedKey");
    openapiFields.add("encryptedMessageData");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to EncryptedResponse
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!EncryptedResponse.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in EncryptedResponse is not found in the empty JSON string", EncryptedResponse.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!EncryptedResponse.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `EncryptedResponse` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("encryptedSharedKey") != null && !jsonObj.get("encryptedSharedKey").isJsonNull()) && !jsonObj.get("encryptedSharedKey").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `encryptedSharedKey` to be a primitive type in the JSON string but got `%s`", jsonObj.get("encryptedSharedKey").toString()));
      }
      // validate the optional field `encryptedMessageData`
      if (jsonObj.get("encryptedMessageData") != null && !jsonObj.get("encryptedMessageData").isJsonNull()) {
        EncryptedResponseEncryptedMessageData.validateJsonObject(jsonObj.getAsJsonObject("encryptedMessageData"));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!EncryptedResponse.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'EncryptedResponse' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<EncryptedResponse> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(EncryptedResponse.class));

       return (TypeAdapter<T>) new TypeAdapter<EncryptedResponse>() {
           @Override
           public void write(JsonWriter out, EncryptedResponse value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public EncryptedResponse read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of EncryptedResponse given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of EncryptedResponse
  * @throws IOException if the JSON string is invalid with respect to EncryptedResponse
  */
  public static EncryptedResponse fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, EncryptedResponse.class);
  }

 /**
  * Convert an instance of EncryptedResponse to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

