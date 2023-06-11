import 'package:flutter/material.dart';
import 'dart:async';
import 'splashScreen.dart';
import 'package:http/http.dart' as http;


void main() {
  runApp(const OnlineApp());
}

class OnlineApp extends StatelessWidget {
  const OnlineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class FirstHomePage extends StatefulWidget {
  const FirstHomePage({super.key});
  @override
  State<FirstHomePage> createState() => FirstHomePageState();
}

class FirstHomePageState extends State<FirstHomePage> {
  final String url = " ";
  List ? data ;
  @override
  void initState() {
    super.initState();
    getjsonData();
  }
  Future<String> getjsonData() async{
    var result = await http.get(
      Uri.encodeFull(url) as Uri,
      headers  : {"Accept" : "application/json"},
    );
    return " Accept ";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("CodePur (online fetching data)"),
        ),
        body: Container(
          height: 300,
          width: 300,
          color: Colors.red,
        ),
    );
  }
}
