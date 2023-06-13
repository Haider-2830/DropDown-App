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
  AlertDialog haider = const AlertDialog(
    backgroundColor: Colors.red,
    title: Text("DialogBox"),
    alignment: Alignment.center,
    titlePadding: EdgeInsets.all(10),
    elevation: 20,
    content: Text(" I am The Dialog Box and appear when click on button"),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dialog Message"),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                showDialog(context: context, builder: (context) => haider);
              },
              child: const Text("Dialog Box ... !")),
        ));
  }
}
