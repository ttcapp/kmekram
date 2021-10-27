import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
String btnText1="Button One";
Color btnColor1=Colors.purple;
Color btnTextColor1=Colors.white;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: Text("My First App",style: TextStyle(color: Colors.black),),
      ),
      body:
      SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/image/image 01.jpg"),
              RaisedButton(
              color: btnColor1,
                child: Text(btnText1,style:TextStyle(color:btnTextColor1),),
                  onPressed:(){
                    setState(() {
                      btnColor1=Colors.green;
                      btnText1="button Pressed";
                      btnTextColor1=Colors.black;
                    });


              }),

            ],
          ),
        ),
      )
    );
  }
}
