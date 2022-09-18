import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'CartPage.dart';
import 'ItemPage.dart';
 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
       
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         
        primarySwatch: Colors.blue,

      ),
      routes: {
        
        "CartPage": (context) => CartPage(),
        "ItemPage": (context) => ItemPage(),
        
  },
    );
  }
}

 

 