import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool Flag=false;
  bool a=false;
  void cs1(bool? value) {
    setState(()=>Flag=!Flag);
  }

  void cs2(bool? value) {
    setState(() {
      a=!a;
    });
  }
  // bool v2=false;
  // void cs1(bool value)=>
  //   setState(()=>v1=value);
  //
  // void cs2(bool value)=>
  //     setState(()=>v2=value);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Akshay"),
    ),
    body: Center(
      child: Column(
        children: [
          Checkbox(value: Flag, onChanged: cs1),
          Checkbox(value: Flag, onChanged: cs1),
          Checkbox(value: Flag, onChanged: cs1),
          Checkbox(value: Flag, onChanged: cs1),
          CheckboxListTile(
            value: a,
            onChanged: cs2,
            title: Text("Hello"),
            subtitle: Text("Hi"),
            checkColor: Colors.red,
            activeColor: Colors.black,
            secondary: Icon(Icons.account_circle_outlined),
            controlAffinity: ListTileControlAffinity.trailing,
          ),

        ],
      ),
    ),

  );
  }




}