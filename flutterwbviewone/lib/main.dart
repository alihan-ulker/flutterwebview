//First, the "webview_flutter:" plugin is added to the pubspec.yaml file.
//Second, the android/app/build.gradle file should have defaultconfig{ minSdkVersion 20 }.
//If you want to open http, for ANDROID you should add them to
//android/app/src/main/AndroidManifest.xml file, in as
// android:usesCleartextTraffic="true"

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debug mode off
      debugShowCheckedModeBanner: false,
      title: 'WebView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter - WebView"),
          centerTitle: true,
        ),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        //Website to display.
        initialUrl: 'http://ulkeralihan.com',

        //javascript activated
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
