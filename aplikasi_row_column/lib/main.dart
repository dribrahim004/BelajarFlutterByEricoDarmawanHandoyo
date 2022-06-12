import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan Row dan Column"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text("Text 1"),
            const Text("Text 2"),
            Row(
              children: const <Widget>[Text("text 3"), Text("text 4")],
            )
          ],
        ),

        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[Text("Text 1"), Text("Text 2")],
        // ),
        // body: Row(
        //   children: <Widget>[Text("Text 1"), Text("Text 2")],
        // ),
      ),
    );
  }
}
