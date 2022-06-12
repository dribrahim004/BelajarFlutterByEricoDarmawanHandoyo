import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "ini adalah text";

  // void tombolDitekan() {
  //   setState(() {
  //     message = "Tombol Sudah ditekan";
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Anonymous Method"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(message),
            RaisedButton(
              //onPressed: tombolDitekan,
              onPressed: () {
                setState(() {
                  message = "Tombol Sudah ditekan - Anonymous Method";
                });
              },
              child: const Text("Tekan saya"),
            )
          ],
        ),
      ),
    ));
  }
}
