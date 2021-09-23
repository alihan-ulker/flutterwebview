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
  late WebViewController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        //Website to display.
        initialUrl: 'https://amazon.com',

        //javascript activated
        javascriptMode: JavascriptMode.unrestricted,

        onWebViewCreated: (controller) {
          this.controller = controller;
        },
      ),
      //To go to the new page.
      //It doesn't necessarily need to be a FloatingActionButton.
      //You can set the button you want.
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.label_important_outline_sharp,
          size: 32,
        ),
        onPressed: () async {
          //Hide header in website
          controller.evaluateJavascript(
              "document.getElementsByTagName('header')[0].style.display='none'");

          //Hide footer in website
          controller.evaluateJavascript(
              "document.getElementsByTagName('footer')[0].style.display='none'");
        },
      ),
    );
  }
}
