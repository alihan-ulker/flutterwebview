# Flutter WebView Examples

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

******************************************************************************************************

Flutter-Examples

FOR => Flutter - WebView

*** First, the "webview_flutter:" plugin is added to the pubspec.yaml file. ***

*** Second, the android/app/build.gradle file should have defaultconfig{ minSdkVersion 20 }.***

If you want to open http, for ANDROID you should add them to

android/app/src/main/AndroidManifest.xml file, in as

                          android:usesCleartextTraffic="true".
////////////////////////////*******************//////////////////////////////////////

If you want to open http, for IOS, put them in ios/Runner/Info.plist file,

    <key>NSAppTransportSecurity</key>
      <dict>
         <key>NSAllowsArbitraryLoads</key>
         <true/>
      </dict>
      
You should add as.
