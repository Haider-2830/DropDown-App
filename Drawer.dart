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
      routes: <String,WidgetBuilder>{
        "NewPage" : (BuildContext context) => SecondScreen("Second Page")
      }
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
          title: const Text("Drawer"),
        ),
        drawer: Drawer(
            backgroundColor: Colors.grey,
            width: 220,
            elevation: 10,
            shadowColor: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
              const  UserAccountsDrawerHeader(
                    margin: EdgeInsets.only(bottom: 1),
                    accountName: Text("Haider Ali"),
                    currentAccountPicture: CircleAvatar(
                      //backgroundColor: Colors.white,
                      backgroundImage: AssetImage("assets/images/c1.jpg"),
                     // child: Image(image: AssetImage("assets/images/c1.jpg")),
                    ),
                    accountEmail: Text("haiderali18198@gmail.com"),
                   // currentAccountPictureSize: Size(100,100),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    tileColor: Colors.white,
                    shape:const  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                    title: const Text("Haider Ali"),
                    subtitle: const Text("haider98@gmail.com"),
                    trailing: const Icon(Icons.edit,size: 15,color: Colors.grey,),
                    textColor: Colors.black,
                    onTap: (){
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed("NewPage");
                    }
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    tileColor: Colors.white,
                    shape:  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                    title: Text("Hassan Ali"),
                    subtitle: Text("hassan98@gmail.com"),
                    trailing: Icon(Icons.edit,size: 15,color: Colors.grey,),
                    textColor: Colors.black,
                  ),
                ),
                const ListTile(
                  tileColor: Colors.white,
                  title: Text("Other Account"),
                  trailing: Icon(Icons.add,size: 35,color: Colors.grey,),
                  textColor: Colors.black,
                ),
                const ListTile(
                  tileColor: Colors.white,
                  title: Text("Profile"),
                  trailing: Icon(Icons.tag_faces_outlined,size: 25,color: Colors.grey,),
                  textColor: Colors.black,
                ),
                const ListTile(
                  tileColor: Colors.white,
                  title: Text("Light / Dark"),
                  trailing: Icon(Icons.radio_button_on_outlined,size: 25,color: Colors.grey,),
                  textColor: Colors.black,
                ),
              ],
            )),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.grey,
            alignment: Alignment.center,
            child:const Text("Home Screen ",style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),),
          ),
        ));
  }
}
// Image(image: AssetImage("assets/images/c1.jpg")),
