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
        //The new website address is displayed in the debug console.
        onPageStarted: (url) {
          print("New website: $url");
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
        //
        onPressed: () async {
          final url = await controller.currentUrl();
          //The previous website address is shown in the debug console.
          print("Previous Website: $url");

          //New website address
          controller.loadUrl("https://youtube.com");
        },
      ),
    );
  }
}
