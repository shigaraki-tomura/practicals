import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int numberOfTimesTapped = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Tapped ${numberOfTimesTapped}times',
                style: const TextStyle(fontSize: 30)),
            GestureDetector(
              onTap: () {
                setState(() {
                  numberOfTimesTapped++;
                });
              },
              child: Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.green[200],
                  child: const Text(
                    'TAP HERE',
                    style: TextStyle(fontSize: 30),
                  )),
//Container
            ) //GestureDetector
          ],
        ), // Column
      ), // Center
    ); //Scaffold
  }
}
