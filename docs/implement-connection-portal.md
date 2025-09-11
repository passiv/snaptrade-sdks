# Integrate the Connection Portal into Your Application

This document outlines the various methods for integrating the connection portal with your application. You can choose from the following methods:

## 1. Implementation via Regular Web Browser

**Why use this method?**

This method is suitable for applications aiming to open external links in a separate browser window or tab, requiring minimal setup without additional SDKs or libraries. It's straightforward but does necessitate users temporarily leaving your platform.

**Example Flow:**

1. The user clicks on `Connect Institution` in your app.
2. A new browser tab opens where the user completes the connection to their broker.
3. After connecting, the user clicks `Done` to return to your app.

**Key Considerations**:

- To monitor window messages for successful connections or failures, the connection portal must be opened in a new window using `window.opener`; otherwise, capturing client-side window messages is not feasible. Find guidance on how to monitor window messages [here](#implement-connection-portal-window-messages-to-monitor-on-the-client-side).
- You can provide a custom redirect to navigate the user back to a specific page in your app post-connection.
- Enable `immediateRedirect` by setting it to `true` within the login link to automatically redirect users back to your application (either to the custom or default redirect page) upon
  successfully connecting or in the case of a connection failure.

## 2. Implementation Using React SDK

For React applications, the `snaptrade-react` SDK offers a seamless integration process. For installation and setup instructions, refer to [SnapTrade React SDK on npm](https://www.npmjs.com/package/snaptrade-react).

**Why use this method?**

This method is recommended for React applications because it offers a streamlined integration process that renders the connection portal in an iframe to keep the connection flow within your application. The SDK also provides built-in callbacks that allow you to use client-side window messages for monitoring successful connections or failures, ensuring a smoother user experience.

**Callbacks provided by the SDK:**

- `onSuccess`: This function is executed when a user successfully connects their
  institution, and it returns the authorization ID associated with the new connection.
- `onError`: This function is triggered when a user encounters an error while
  attempting to connect to their institution. The function returns an
  object containing error code, status code, and a detailed
  description of the error.
- `onExit`: This function is triggered when a user opts to exit the connection flow or closes the second tab opened for making an oAuth connection.

## 3. Implementation via an iFrame

**Why use this method?**

This method is ideal if you want to keep the connection flow within your application, providing a more integrated user experience. It's especially useful if you're not using React for your frontend but still want to maintain the connection process within your app.

**Example Flow:**

1. Install a library that offers a Modal component or use your own. In this example, we will use the Modal component from Ant Design: https://ant.design/components/modal
2. Import the Modal component in your React project.
3. Load the generated login link within the iframe:

```jsx
import { Modal } from 'antd';

const MyModal = () => {
  const loginLink = '<LOGIN_LINK>';

  return (
    <Modal title="SnapTrade Connection Portal" visible footer={null}>
      <iframe
        id="snaptrade-connection-portal"
        src={loginLink}
        title="SnapTrade Connection Portal"
        allowfullscreen
      ></iframe>
    </Modal>
  );
};

export default MyModal;
```

**Key Considerations:**

- Find guidance on how to monitor window messages [here](#implement-connection-portal-window-messages-to-monitor-on-the-client-side).
- This method may require additional styling and layout considerations to ensure the iframe fits appropriately within your application's design.

## 4. Implementation in a React Native WebView

**Why use this method?**
This method is ideal for React Native applications that want to keep the connection flow within the app while leveraging the power of WebView.

**Example Flow:**

1. Install the `react-native-webview` library: `npm install react-native-webview`
2. Import the WebView component in your React Native project.
3. Load the generated login link within the WebView component
4. Utilize the `onMessage` prop to handle window messages:

```jsx
import { WebView } from "react-native-webview";
const MyWebView = () => {
  const loginLink = "<LOGIN_LINK>";

  return (
    <WebView
      source={{
        uri: loginLink,
      }}
      javaScriptEnabled={true}
      injectedJavaScript={`
    window.addEventListener('message',(event) => {
     window.ReactNativeWebView.postMessage(event.data);
    });
   `}
      onMessage={(event) => {
        const messageData = event.nativeEvent.data;
        if (messageData) {
	        // Handle window messages here
      }}
    />
  );
};
```

**Key Considerations:**

- Find guidance on how to monitor window messages [here](#implement-connection-portal-window-messages-to-monitor-on-the-client-side).

## 5. Implementation in an iOS WebView

**Why use this method?**

This method is ideal for native iOS applications that want to keep the connection flow within the app while leveraging the power of WebView components.

**Example Flow:**

1. Import the necessary WebView component (`UIWebView` or `WKWebView`) in your iOS project.
2. Load the generated login link within the WebView component.
3. Set up appropriate delegates or handlers to manage events like successful connections or connection failures.

```swift
import UIKit
import WebKit

class MyWebViewController: UIViewController, WKNavigationDelegate {

  var webView: WKWebView!
  let loginLink = "<LOGIN_LINK>"
  override func loadView() {
    let webConfiguration = WKWebViewConfiguration()
    webView = WKWebView(frame: .zero, configuration: webConfiguration)
    webView.navigationDelegate = self
    view.addSubview(webView)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    let request = URLRequest(url: URL(string: loginLink)!)
    webView.load(request)
  }

  func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
     // Handle window messages here
  }
}

```

**Key Considerations:**

- Find guidance on how to monitor window messages [here](#implement-connection-portal-window-messages-to-monitor-on-the-client-side).

## 6. Implementation in an Android WebView

**Why use this method?**

This method is ideal for native Android applications that want to keep the connection flow within the app while leveraging the power of WebView components.

**Example Flow:**

1. Import the `WebView` component in your Android project.
2. Load the generated login link within the `WebView` component.
3. Set up appropriate listeners or handlers to manage events like successful connections or connection failures.

```java
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class MyWebViewActivity extends AppCompatActivity {
    private WebView webView;
    private String loginLink = "<LOGIN_LINK>";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        webView = (WebView) findViewById(R.id.webView);
        webView.setWebViewClient(new WebViewClient() {
            @Override
            public void onPageFinished(WebView view, String url) {
              // Handle window messages here
            }
        });
        webView.loadUrl(loginLink);
    }
}
```

**Key Considerations:**

- Find guidance on how to monitor window messages [here](#implement-connection-portal-window-messages-to-monitor-on-the-client-side).

## Window Messages to Monitor on the client side:

- `SUCCESS`: Indicates successful institution connection. The message contains the authorization ID.

  - Structure:

  ```
  {status: 'SUCCESS', authorizationId: 'AUTHORIZATION_ID'}
  ```

  - Note: Legacy string format `SUCCESS:AUTHORIZATION_ID` is for backward compatibility and it may be deprecated in the future. It is essential to use the object format.

- `ERROR`: Sent when a connection error occurs, including an error code, status code and description.

  - Structure:

  ```
  {status: 'ERROR', errorCode: 'ERROR_CODE', statusCode: 'STATUS_CODE', detail: 'DETAIL_OF_THE_ERROR'}
  ```

  - Note: Legacy string format `ERROR:STATUS_CODE` is for backward compatibility and it may be deprecated in the future. It is essential to use the object format.

- `CLOSED`: Sent when the user closes the OAuth connection window that opens in a new tab.

  - Note: This window message only triggers if connection portal is loading in an Iframe [#3](#implement-connection-portal-3-implementation-via-an-iframe)

- `CLOSE_MODAL`: Sent when the user opts to exit the connection flow or clicks `Done` after successful connection (if the portal is not already closed when listening for `SUCCESS`).
  - Note: This window message only triggers if connection portal is loading in an Iframe [#3](#implement-connection-portal-3-implementation-via-an-iframe).
- `ABANDONED`: Functions the same as `CLOSE_MODAL` but only triggers for non-iframe implementations.
<aside>
💡 **Note**: When loading the connection portal in an iframe, your application is responsible for closing the modal and displaying success/error messages post <u>OAuth connections</u>.

</aside>

**Example of how these events can be captured in a React app:**

```jsx
useEffect(() => {
  const handleMessageEvent = (e) => {
    if (e.data) {
      const data = e.data;
      if (data.status === 'SUCCESS') {
        const authorizationId = data.authorizationId;
        // close the connection portal/modal and display success message to the user
      }
      if (data.status === 'ERROR') {
        const { errorCode, statusCode, detail } = data;
        // close the connection portal/modal and display error message to the user
      }
      if (data === 'CLOSED') {
        // close the modal
      }
      if (data === 'CLOSE_MODAL') {
        // close the modal
      }
      if (data === 'ABANDONED') {
        // close the connection portal
      }
    }
  };
  return () => {
    window.removeEventListener('message', handleMessageEvent, false);
  };
}, []);
```
