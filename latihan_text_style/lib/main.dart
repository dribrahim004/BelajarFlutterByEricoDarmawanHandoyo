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
          title: const Text("Latihan Text Style"),
        ),
        body: const Center(
          child: Text(
            "Ini adalah text",
            style: TextStyle(
                fontFamily: "RothwellSignature",
                fontSize: 30,
                fontStyle: FontStyle.italic,
                //decoration: TextDecoration.underline,
                decoration: TextDecoration.overline,
                decorationColor: Colors.red,
                decorationThickness: 5,
                decorationStyle: TextDecorationStyle.wavy),
          ),
        ),
      ),
    );
  }
}
