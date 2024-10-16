import 'package:app_1/Home.dart';
import 'package:app_1/SignUpPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Loginpage extends StatefulWidget{

  @override
  State<Loginpage> createState() => _HomeState();
}

class _HomeState extends State<Loginpage> {
  bool _rememberMe = false;
  bool _wrongpass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home_Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              Text(
                'Login Kro Jaldi',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50,),
              Form(
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter Email Address',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value) {},
                        validator: (value) {return value!.isEmpty ? 'Please Enter Email' : null;},
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
                          validator: (value) {return value!.isEmpty ? 'Please Enter Password' : null;}
                      ),

                      SizedBox(height: 5),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                        Checkbox(
                          value: _rememberMe,
                          onChanged: (bool? value) {
                            setState(() {
                              _rememberMe = value ?? false;
                            });
                          },
                        ), Text('Remember me?'),
                        ],
                      ),
                      SizedBox(height: 20),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
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
                            child: Text('Login', style: TextStyle(
                                color: Colors.white, fontSize: 20)),
                        ),
                      ),

                      if(_wrongpass)const Text('Forgot Password?',),
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
                                MaterialPageRoute(builder: (context) => SignUpPage()),
                              );
                            print('Sign up tapped');
                          },
                          child: Text('Need an account? SIGN UP', style: TextStyle(decoration: TextDecoration.underline,),
                          ),
                        ),
                      )
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}