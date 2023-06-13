import 'package:codepur_second_project/second.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Snack Bar"),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                // This is use to display the message on screen "ScaffoldMessenger"
                ScaffoldMessenger.of(context).showSnackBar((const SnackBar(
                  content: Text(
                    " Why You Click Me .... ?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  backgroundColor: Colors.grey,
                  padding: EdgeInsets.all(10),
                  // margin: EdgeInsets.all(20),
                  duration: Duration(seconds: 3),
                )));
              },
              child: const Text("Click Me ...!")),
        ));
  }
}
