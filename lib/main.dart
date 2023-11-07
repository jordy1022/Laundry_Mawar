import 'package:flutter/material.dart';
import 'package:pos/login/login.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'POS MOBILE',
      theme: ThemeData(primarySwatch: Colors.lightGreen,
      ),
      home: Login(),
    );
  }
}