In order to make it easier and faster to use the SnapTrade Connection Portal, we added support for loading the Connection Portal in an `iframe`. This allows apps to make the connection experience more coherent so that users don't need to leave their app until the OAuth linking step.

After generating a redirect link (<https://docs.snaptrade.com/reference/authentication_loginsnaptradeuser>), use the following template to load the portal in an `iframe` inside your app:

```html html
<Modal>
  <button className="close-button" onClick="{close}">
    <span aria-hidden>×</span>
  </button>
  <iframe
    id="snaptrade-connection-portal"
    src="{loginLink}"
    title="SnapTrade Connection Portal"
    allowfullscreen
  ></iframe>
</Modal>
```

The application is also designed to initiate the firing of three distinct events in response to certain specific occurrences. These occurrences and their respective event triggers are as follows:

- **Successful connection establishment:** After a successful connection, the application will transmit a message containing the following object:
  ```
  {
    "status": "SUCCESS",
    "authorizationId": "5713a7a3-baf4-401d-912a-83a1792fbd6c"
  }
  ```
  This object includes the status field, which will be set to 'SUCCESS', along with the authorizationId field, holding a unique identifier (UUID) in the format: `5713a7a3-baf4-401d-912a-83a1792fbd6c`.
- **Connection failure:** In the event of a connection failure, the parent application will receive a message with the following format:
  ```
  {
    "status": "ERROR",
    "errorCode": "1000",
    "statusCode": 401,
    "detail": "Invalid credentials provided, please try again."
  }
  ```
  The `status` field will be set to 'ERROR' to indicate the error status. The `errorCode` field may contain a specific error code. The `statusCode` field has the corresponding HTTP status code like 401, 500, etc. The `detail` field will provide additional information about the encountered error.
- **User tab closure:** When the user closes the second tab opened for completing oAuth connections, the application will promptly transmit a message to the parent application with the value `CLOSED`.

Example of how these events can be captured in a React app:

```typescript
useEffect(() => {
  const handleMessageEvent = (e: MessageEvent<unknown>) => {
    if (e.data) {
      const data = e.data;
      if (data.status === "SUCCESS") {
        const authorizationId = data.authorizationId;
        // do something here
      }

      if (data.status === "ERROR") {
        const { errorCode, statusCode, detail } = data;
        // do something here
      }

      if (e.data === "CLOSED") {
        // do something here
      }
    }
  };
  return () => {
    window.removeEventListener("message", handleMessageEvent, false);
  };
}, []);
```

**_Note:_**

If your app uses React in its frontend, you can use our `React SDK` package to make it even easier to iframe the Connection Portal.

**_Here is a link to the SnapTrade React SDK: <https://www.npmjs.com/package/snaptrade-react>_**
