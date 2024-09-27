// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:taskauth/SecondScreen.dart';

void main() {
  runApp(MyApp());
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

class Firstscreen extends StatefulWidget {
  Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         Positioned.fill(child: Image.network('https://www.highlandhousefurniture.com/Consumer/images/Gallery/1513-54-C2_RS_WFM2019.jpg', fit: BoxFit.cover,)) ,   
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'MAKE YOUR',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w400,
                      color: Colors.blueGrey[800]),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'HOME BEAUTIFUL',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Container(
                    height: 160,
                    width: 300,
                    // color: Colors.black,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'the place where one lives come over to my house so I can show you my new furniture. residence. abode. roof. home.',
                            style: TextStyle(
                              color: Colors.blueGrey[900],
                              fontSize: 20,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Center(
                  child: SizedBox(
                    height: 45,
                    width: 150,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Secondscreen()));
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Text('Get Started')),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
