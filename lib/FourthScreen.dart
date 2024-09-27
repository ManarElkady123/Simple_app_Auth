// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
     
      
    );
  }
}
class Fourthscreen extends StatefulWidget {
  const Fourthscreen({super.key});

  @override
  State<Fourthscreen> createState() => _FourthscreenState();
}

class _FourthscreenState extends State<Fourthscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('May Allah make all your dreams come true ' , 
              style: TextStyle(
                color: Colors.blueGrey[800],
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              ),
              Icon(Icons.check_circle),
            ],
          ),
        ),
      ),
    );
  }
}