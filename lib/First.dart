import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});
  @override
  State<FirstPage> createState() => _HomeState();
}

class _HomeState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First_Page'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Welcome to the first page!',
                style: TextStyle(
                  backgroundColor: Colors.brown,
                ),
              ),
              SizedBox(height: 20),
              ClipOval(
                child: Image.asset(
                  'Image/m1.jpg', // Replace with your image file path
                  width: 350,
                  height: 350,
                  fit: BoxFit.cover, // Adjust the fit as per your requirement
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
