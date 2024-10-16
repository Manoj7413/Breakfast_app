import 'package:flutter/material.dart';
import 'Loginpage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily:'Rohit'),
      title: 'Flutter Demo',
      home:Loginpage(),
    );
  }
}
