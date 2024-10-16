import 'package:app_1/Loginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'First.dart';

class SignUpPage extends StatefulWidget{

  @override
  State<SignUpPage> createState() => _HomeState();
}

class _HomeState extends State<SignUpPage> {
  bool _rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign_Up_Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Sign In Kro Jaldi',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Form(
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter Email Address',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value) {},
                        validator: (value) {
                          return value!.isEmpty ? 'Please Enter Email' : null;
                        },
                      ),

                      SizedBox(height: 30),

                      TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter Password',
                            prefixIcon: Icon(Icons.password),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String value) {},
                          validator: (value) {
                            return value!.isEmpty
                                ? 'Please Enter Password'
                                : null;
                          }
                      ),

                      SizedBox(height: 30),

                      TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            hintText: 'Re-Enter Password',
                            prefixIcon: Icon(Icons.password),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String value) {},
                          validator: (value) {
                            return value!.isEmpty
                                ? 'Please Enter Password'
                                : null;
                          }
                      ),
                      SizedBox(height: 20),

                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => FirstPage()),
                          );

                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: double.infinity,
                          alignment: Alignment.center,
                          height: 40,
                          child: Text('Sign In', style: TextStyle(
                              color: Colors.white, fontSize: 20)),
                        ),
                      ),

                      SizedBox(height: 20),

                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              color: Colors.black45,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text('OR'),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {print('Sign in with Google');},
                            icon: SvgPicture.asset("Image/google (1).svg"),
                          ),

                          IconButton(
                            onPressed: () {print('Sign in with Facebook');},
                            icon: SvgPicture.asset("Image/facebook.svg"),
                          ),

                          IconButton(
                            onPressed: () {print('Sign in with Linkdeen');},
                            icon: SvgPicture.asset("Image/linkedin.svg"),
                          ),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Loginpage()),
                            );
                            print('Sign up tapped');
                          },
                          child: Text(
                            'Already User? Login',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      )


                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}