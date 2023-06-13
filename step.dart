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
  int a = 0;
  List<Step> haider = [
    const Step(
        title: Text(" First Step "),
        isActive: true,
        label: Text("Label 1"),
        state: StepState.complete,
        subtitle: Text(" Sub Title"),
        content: Text("I am Body of Context of 1")),
    const Step(
        title: Text(" First Step part2"),
        isActive: true,
        label: Text("Label 1"),
        state: StepState.complete,
        subtitle: Text(" Sub Title"),
        content: Text("I am Body of Context of 2")),
    const Step(
        title: Text(" Second Step "),
        isActive: true,
        label: Text("Label 2"),
        state: StepState.error,
        subtitle: Text(" Sub Title"),
        content: Text("I am Body of Context of 2")),
    const Step(
        title: Text(" Third Step "),
        isActive: true,
        label: Text("Label 3"),
        state: StepState.editing,
        subtitle: Text(" Sub Title"),
        content: Text("I am Body of Context of 3")),
    const Step(
        title: Text(" Fourth Step "),
        isActive: true,
        label: Text("Label 4"),
        state: StepState.disabled,
        subtitle: Text(" Sub Title"),
        content: Text("I am Body of Context of 4")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dialog Message by Haider Ali"),
        ),
        body: Center(
          child: Stepper(
              steps: haider,
              elevation: 10,
              currentStep: a,
              //margin: const EdgeInsets.all(10)
            type: StepperType.vertical,
    ),
        ));
  }
}
