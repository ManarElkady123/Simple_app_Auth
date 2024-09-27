// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:taskauth/FourthScreen.dart';
import 'package:taskauth/SecondScreen.dart';

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
class Thirdscreen extends StatefulWidget {
   Thirdscreen({super.key});

  @override
  State<Thirdscreen> createState() => _ThirdscreenState();
}

class _ThirdscreenState extends State<Thirdscreen> {
  bool isSee= true;
  var keyState = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(12.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: keyState,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('WELCOME' , style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 25,),
                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty){
                        return 'Enter Name';
                      }
                      else if(value.length < 3){
                        return 'Enter valid Name';
                      }
                      else{
                        return null ;
                      }
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      label: Text('Name', style: TextStyle(color: Colors.blueGrey),),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blueGrey),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
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
                      label: Text('Email' , style: TextStyle(color: Colors.blueGrey),),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blueGrey),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
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
                    obscureText: isSee,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      label: Text('Password' , style: TextStyle(color: Colors.blueGrey),),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blueGrey),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          isSee = !isSee;
                        });
                      }, icon: isSee? Icon(Icons.visibility):Icon(Icons.visibility_off))
                    ),
                  ),
                  SizedBox(height: 15,),
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
                    obscureText: isSee,
                    keyboardType: TextInputType.number,

                    decoration: InputDecoration(
                      
                      label: Text('Confirm Password' , style: TextStyle(color: Colors.blueGrey),),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blueGrey),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          isSee = !isSee ;
                        });
                      }, icon: isSee? Icon(Icons.visibility):Icon(Icons.visibility_off))
                    ),
                  ),
                  SizedBox(height: 45,),
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
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                       child: Text('SIGN UP')),
                    ),
                  ),
                  SizedBox(height: 45,),
                  Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have account?' , style: TextStyle(
                          color: Colors.blueGrey[700],
                        ),),
                        TextButton(onPressed: (){
                          setState(() {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Secondscreen()));
                          });
                        }, child: Text('SIGN IN', style: TextStyle(
                          color: Colors.black
                        ),))
                      ],
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