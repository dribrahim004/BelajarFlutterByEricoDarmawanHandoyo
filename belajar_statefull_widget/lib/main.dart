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
  int number = 0;

  void tekanTombol_tambah() {
    setState(() {
      number++;
    });
  }

  void tekanTombol_kurang() {
    setState(() {
      number--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Widget Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              number.toString(),
              style: TextStyle(fontSize: 10 + number.toDouble()),
            ),
            RaisedButton(
                child: const Text("Tambah Bilangan"),
                onPressed: tekanTombol_tambah),
            RaisedButton(
                child: const Text("Kurangi Bilangan"),
                onPressed: tekanTombol_kurang)
          ],
        ),
      ),
    ));
  }
}
