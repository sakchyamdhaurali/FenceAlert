import 'package:flutter/material.dart';
import 'package:geofence/pages/RegistrationPage.dart';
import 'package:geofence/pages/UserScreen.dart';

import 'Forgot_Password.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 93, left: 32, right: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Log into \nyour account',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 29,
                  fontFamily: 'ProductSans',
                  fontWeight: FontWeight.w500,
                  height: 2,
                ),
              ),
              SizedBox(
                height: 19,
              ),
              Container(
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your Email Address',
                  ),
                ),
              ),
              Container(
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your Password',
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    ForgotPassword() )
                    );
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.black),
                  )),
              SizedBox(
                height: 35,
              ),
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35, bottom: 35),
                      child: Container(
                        width: 147,
                        height: 51,
                        decoration: BoxDecoration(
                          color: Color(0xFF2D201C),
                          borderRadius: BorderRadius.circular(26.5),
                        ),
                        child: TextButton(
                          onPressed: () {
                           Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  UserScreen()),
                        );
                          
                          },
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                   
                   
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          RegistrationPage()
                          ));
                        },
                        child: Text(
                          'Sign up ',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
