import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int? num1 = 0, num2 = 0, result = 0;
  add() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! + num2!;
    });
  }

  sub() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! - num2!;
    });
  }

  mul() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! * num2!;
    });
  }

  div() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! ~/ num2!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Calculator'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Text(
            'Result is: $result',
            style: TextStyle(fontSize: 20, color: Colors.blue.shade700),
          ),
          const SizedBox(
            height: 15,
          ),
          TextField(
            controller: controller1,
            decoration: InputDecoration(
                labelText: "Enter number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          const SizedBox(
            height: 15,
          ),
          TextField(
            controller: controller2,
            decoration: InputDecoration(
                labelText: "Enter number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    add();
                    controller1.clear();
                    controller2.clear();
                  },
                  child: const Text('ADD')),
              ElevatedButton(
                  onPressed: () {
                    sub();
                  },
                  child: const Text('SUB'))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    mul();
                  },
                  child: const Text('MUL')),
              ElevatedButton(
                  onPressed: () {
                    div();
                  },
                  child: const Text('DIV')),
            ],
          )
        ],
      ),
    );
  }
}
