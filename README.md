# urlhandler

This simple package allows you to handle URL events from a Go app in OSX.

Remember to add CFBundleURLTypes in Info.plist in your app bundle accordingly, here's a template:
```xml
<key>CFBundleURLTypes</key>
<array>
    <dict>
        <key>CFBundleURLName</key>
        <string>{{ name }}</string>
        <key>CFBundleURLSchemes</key>
        <array>
            <string>{{ scheme }}</string>
        </array>
   </dict>
</array>
```

`name` is a unique name (Apple recommends a Java-style package name) and `scheme` is the URL scheme you want to handle.
