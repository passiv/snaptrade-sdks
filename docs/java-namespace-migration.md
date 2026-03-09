# Java SDK Namespace Migration Guide

## What Changed?

Starting with version **5.0.155**, the SnapTrade Java SDK has migrated from the `com.konfigthis` Maven namespace to `com.snaptrade`.

**This is a breaking change that requires updates to your project.**

## What You Need to Do

### Update Maven Dependency

**Before (version 5.0.154 and earlier):**
```xml
<dependency>
    <groupId>com.konfigthis</groupId>
    <artifactId>snaptrade-java-sdk</artifactId>
    <version>5.0.154</version>
</dependency>
```

**After (version 5.0.155 and later):**
```xml
<dependency>
    <groupId>com.snaptrade</groupId>
    <artifactId>snaptrade-java-sdk</artifactId>
    <version>5.0.155</version>
</dependency>
```

### Update Gradle Dependency (if using Gradle)

**Before:**
```gradle
implementation 'com.konfigthis:snaptrade-java-sdk:5.0.154'
```

**After:**
```gradle
implementation 'com.snaptrade:snaptrade-java-sdk:5.0.155'
```

### Update Import Statements

All package imports need to be updated:

**Find:**
```java
import com.konfigthis.client
```

**Replace with:**
```java
import com.snaptrade.client
```

**Examples of imports that need updating:**
```java
// Before
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.model.Account;
import com.konfigthis.client.api.AccountInformationApi;

// After
import com.snaptrade.client.Snaptrade;
import com.snaptrade.client.ApiException;
import com.snaptrade.client.model.Account;
import com.snaptrade.client.api.AccountInformationApi;
```

### Step 4: Rebuild Your Project

After making the changes above, rebuild your project:

```bash
# Maven
mvn clean install

# Gradle
gradle clean build
```

## What Stays the Same?

- **All API methods** remain exactly the same
- **All model classes** have the same names and structure
- **Authentication** works identically
- **SDK functionality** is unchanged
- **No behavioral differences** in how the SDK operates

The only changes are the Maven coordinates and Java package names.


## Support for Old Namespace

- The old `com.konfigthis:snaptrade-java-sdk` namespace will remain available on Maven Central for existing versions (up to 5.0.154)
- **No new versions** will be published under `com.konfigthis`
- **All future releases** will use the `com.snaptrade` namespace

## Need Help?

If you encounter issues during migration:

- Check our [GitHub Issues](https://github.com/passiv/snaptrade-sdks/issues)
- Join our [Discord](https://discord.gg/rkYWBxb8Qu)
- Contact support at support@snaptrade.com

