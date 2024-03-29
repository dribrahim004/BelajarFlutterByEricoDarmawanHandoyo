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
          title: const Text("Fliexible Layout"),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        color: Colors.red,
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        color: Colors.green,
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        color: Colors.purple,
                      )),
                ],
              ),
            ),
            Flexible(
                flex: 2,
                child: Container(
                  color: Colors.amber,
                )),
            Flexible(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                )),
          ],
        ),
      ),
    );
  }
}
