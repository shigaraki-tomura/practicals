import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  )); //MaterialApp
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController id = TextEditingController();
    TextEditingController semester = TextEditingController();
    TextEditingController dept = TextEditingController();
    TextEditingController city = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Info"),
        centerTitle: true,
      ), // AppBar
      body: Column(
        children: [
          const SizedBox(height: 10),
          TextField(
            controller: name,
            decoration: InputDecoration(
                labelText: " Enter your name",
                border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(15)) // OutlineInputBorder
                ), //Input Decoration
          ), // TextField
          const SizedBox(height: 10),
          TextField(
            controller: id,
            decoration: InputDecoration(
                labelText: " Enter your ID",
                border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(15)) // OutlineInputBorder
                ), //Input Decoration
          ), // TextField
          const SizedBox(height: 10),
          TextField(
            controller: semester,
            decoration: InputDecoration(
                labelText: " Enter your Semester",
                border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(15)) // OutlineInputBorder
                ), //Input Decoration
          ), // TextField
          const SizedBox(height: 10),
          TextField(
            controller: dept,
            decoration: InputDecoration(
                labelText: " Enter your Department",
                border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(15)) // OutlineInputBorder
                ), //Input Decoration
          ), // TextField
          const SizedBox(height: 10),
          TextField(
            controller: city,
            decoration: InputDecoration(
                labelText: " Enter your City",
                border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(15)) // OutlineInputBorder
                ), //Input Decoration
          ), // TextField
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NextScreen(
                              name: name.text,
                              id: id.text,
                              semester: semester.text,
                              dept: dept.text,
                              city: city.text,
                            ))).whenComplete(() => {
                      //NextScreen, MaterialPageRoute
                      name.clear(),
                      id.clear(),
                      semester.clear(),
                      dept.clear(),
                      city.clear()
                    });
              },
              child: const Text("continue")) //ElevatedButton
        ],
      ), //Column
    ); // Scaffold
  }
}

class NextScreen extends StatelessWidget {
  final String? name, id, semester, dept, city;

  const NextScreen(
      {this.name, this.id, this.semester, this.dept, this.city, super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Name:$name"),
          Text("Id:$id"),
          Text("Semester:$semester"),
          Text("Department:$name"),
          Text("City:$city"),
        ],
      ), //Column
    ); // Scaffold
  }
}
