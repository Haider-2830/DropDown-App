import 'dart:convert';
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
  final String url = " https://swapi.co/api/people ";
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
    ); // get close here
    setState(() async {
      var convertData = jsonDecode(result.body);
      data  = convertData['results'];
    });
    return " Success ";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("CodePur (online fetching data)"),
        ),
        body: ListView.builder(
          itemCount: data?.length,
          itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child:  Container(
                  padding:const EdgeInsets.all(10),
                  child: Text(data![index]['name']),
                ),
              )
            ],
          );
        },)
    );
  }
}
