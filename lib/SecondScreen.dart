// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:taskauth/FourthScreen.dart';
import 'package:taskauth/ThirdScreen.dart';

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

class Secondscreen extends StatefulWidget {
  Secondscreen({super.key});

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  bool isSee = true ;
  var keyState = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: keyState,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hello !',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400 , color: Colors.blueGrey[700]),
                    
                  ),
                  SizedBox(height: 20,),
                  Text('WELCOME BACK' , style: TextStyle(
                    fontSize: 25 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                  SizedBox(height: 35,),
                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty){
                        return 'Enter Email';
                      }
                      else if(!RegExp(r'\S+@\S+\.\S+').hasMatch(value)){
                        return 'Enter valid Email';
                      }
                      else {
                        return null ;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      label: Text('Email' , style: TextStyle(color: Colors.blueGrey[700]),),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blueGrey)
                      )
                    ),
                  ),
                  SizedBox(height: 25,),
                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty){
                        return 'Enter Password';
                        
                      }
                      else if(value.length<5){
                         return 'Enter Password more than 5 digits';
                      }
                      else {
                        return null ;
                      }
                    },
                    keyboardType: TextInputType.number,
                    obscureText: isSee,
                    decoration: InputDecoration(
                      
                      label: Text('Password' , style: TextStyle(color: Colors.blueGrey[700]),),
                     
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blueGrey),
              
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red)
                      ),
                       focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red)
                       ),
                       suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          isSee = !isSee ;
                        });
                       }, icon: isSee? Icon(Icons.visibility):Icon(Icons.visibility_off)),
                       
                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: TextButton(onPressed: (){
                      setState(() {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Thirdscreen()));
                      });
                    }, child: Text('Forgot Password !', style: TextStyle(
                      color: Colors.black
                    ),)),
                  ),
                  SizedBox(height: 25,),
                  Center(
                    child: SizedBox(
                      width: 300,
                      height: 45,
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          if(keyState.currentState!.validate()){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Fourthscreen()));
                          }
                          
                        });
                      }, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        //shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                      ),
                      child: Text('Log in')),
                    ),
                  ),
                  SizedBox(height: 25,),
                  Center(
                    child: TextButton(onPressed: (){
                      setState(() {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Thirdscreen()));
                      });
                    }, child: Text('SIGN UP' , style: TextStyle(
                      color: Colors.black
                    ),),
                    
                    ),
                  )
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
