// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(NewApp());
}

class NewApp extends StatefulWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  State<NewApp> createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {

  String myText = 'Hello new Bangladesh';

  Color myColor = Colors.blue;

  int myNumber = 0;



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App 2022'),
        ),
        body: Center(

          child: Container(
            margin: EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  myText,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: myColor,
                  ),
                ),
                Text(myNumber.toString(),
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      myText = 'Hello World';
                      myColor = Colors.deepPurpleAccent;
                      myNumber = myNumber + 1;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Press me'),
                      Icon(Icons.ac_unit),

                    ],
                  ),
                ),

                ElevatedButton(onPressed: (){

                  setState(() {
                    myText = 'Hello new Bangladesh';
                    myNumber = 0;
                  });

                }, child: Icon(Icons.lock_reset)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
