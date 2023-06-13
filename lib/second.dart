import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{
   String title ;
   SecondScreen(this.title,{super.key});
  @override Widget build(BuildContext context){
    return Scaffold(
      appBar:  AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          alignment: Alignment.center,
          child: Text("I am the $title"),
        ),
      ),
    );
  }
}