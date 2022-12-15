// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(NewApp());
}

class NewApp extends StatelessWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App 2022'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello Bangladesh',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  print('Button is pressed');
                },
                child: Text('Press me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
