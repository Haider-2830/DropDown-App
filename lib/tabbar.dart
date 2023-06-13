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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  // ignore: non_constant_identifier_names
  late TabController i_am_controller;
  @override
  void initState() {
    super.initState();
    i_am_controller = TabController(
        length: 3, vsync: this, animationDuration: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    super.dispose();
    i_am_controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tab Bar in Flutter"),
        bottom: TabBar(controller: i_am_controller, tabs: const [
          Tab(
            icon: Icon(Icons.message),
          ),
          Tab(
            icon: Icon(Icons.favorite_outline_outlined),
          ),
          Tab(
            icon: Icon(Icons.adb_outlined),
          ),
        ]),
      ),
      //========================================== This is use for the bottom tab bar ======================================
      // bottomNavigationBar: Material(
      //   color: Colors.purple,
      //   child: TabBar(controller: i_am_controller, tabs: const [
      //     Tab(
      //       icon: Icon(Icons.message),
      //     ),
      //     Tab(
      //       icon: Icon(Icons.favorite_outline_outlined),
      //     ),
      //   ]),
      // ),
      body: TabBarView(controller: i_am_controller, children: const [
        NewPage("First Page"),
        NewPage("Second Page"),
        NewPage("Third Page"),
      ]),
    );
  }
}

class NewPage extends StatelessWidget {
  final String title;
  const NewPage(this.title, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
