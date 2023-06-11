import "package:flutter/material.dart";

main() => runApp(const DropDown());

class DropDown extends StatelessWidget {
  const DropDown({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      debugShowCheckedModeBanner: false,
      home: const DropDownScreen(),
    );
  }
}

class DropDownScreen extends StatefulWidget {
  const DropDownScreen({super.key});
  @override
  State<DropDownScreen> createState() => DropDownScreenState();
}

class DropDownScreenState extends State<DropDownScreen> {
  DropDownScreenState() {
    firstValue = name[0];
    secondValue = secondName[0];
  }
  List<String> name = [
    "Haider Ali",
    "Hassan Ali",
    "Ansa Quran",
    "Zarina Akram"
  ];
  List<String> secondName = [
    "Haider Ali",
    "Hassan Ali",
    "Ansa Quran",
    "Zarina Akram"
  ];
  String secondValue = "";
  String firstValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text(" DropDown ")),
      ),
      body: Column(
        children: [
          // This is the first dropdown list in flutter
          Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                // This is the predefined button in the flutter that are use to hide Dropdown underline
                DropdownButtonHideUnderline(
              // This is the predefined button in the flutter that are use for the Dropdown
              child: DropdownButton(
                  // use to give full width
                  isExpanded: true,
                  icon: const Icon(
                    Icons.arrow_drop_down_circle_outlined,
                    size: 30,
                  ),
                  hint: const Text(" Select Name "),
                  // this is use to give the default value
                  // value: firstValue,
                  items: name
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      firstValue = val as String;
                    });
                  }),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          // This is the second dropdown list in flutter
          Padding (
            padding: const EdgeInsets.all(20.0),
            child: DropdownButtonFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple,width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange,width: 2)),
                ),
                hint: const Text(" Select Name"),
                items: secondName
                    .map((a) => DropdownMenuItem(
                  value: a,
                  child: Text(a),
                ))
                    .toList(),
                onChanged: (val2) {
                  setState(() {
                    secondValue = val2 as String;
                  });
                }),
          ),
        ],
      ),
    );
  }
}
