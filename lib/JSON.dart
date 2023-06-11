import 'dart:convert';
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
        primarySwatch: Colors.blue,
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
          title: const Text("CodePur (JSON files)"),
        ),
        body: FutureBuilder(
          future: DefaultAssetBundle.of(context).loadString("json/person.json"),
          builder: (context, snapshot) {
            var a = jsonDecode(snapshot.data.toString());
            return ListView.builder(
              itemExtent: 200,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 16,
                      child: Text(
                        a[index]["Name"],
                        style:const TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      a[index]["Age"],
                      style:const TextStyle(
                          fontSize: 30,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      a[index]["Gender"],
                      style:const TextStyle(
                          fontSize: 30,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      a[index]["Dept"],
                      style:const TextStyle(
                          fontSize: 30,
                          color: Colors.purple,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                );
              },
              itemCount: a.length,
            );
          },
        ));
  }
}
