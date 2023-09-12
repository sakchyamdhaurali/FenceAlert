

import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:geofence/pages/LoginPage.dart';

class NewPassScreen extends StatefulWidget {
  @override
  State<NewPassScreen> createState() => _NewPassScreenState();
}

class _NewPassScreenState extends State<NewPassScreen> {
  bool isObscured = true;
  bool isToggle = true;
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 53, left: 33, right: 33),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(Icons.arrow_back_ios_new)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 34,
                ),
                Row(
                  children: [
                    Text(
                      'Create new password',
                      style: TextStyle(
                        letterSpacing: 1.5,
                        fontFamily: 'ProductSans Bold',
                        fontSize: 29,
                        // fontWeight: FontWeight.w600,
                        height: 2,
                        wordSpacing: 1,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Your new password must be different from previously used password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'ProductSans Light',
                    fontWeight: FontWeight.w300,
                    height: 1.71,
                  ),
                ),
                SizedBox(
                  height: 58,
                ),
                Container(
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: isObscured,
                    decoration: InputDecoration(
                      // border: UnderlineInputBorder(),
                      hintText: 'New Password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscured = !isObscured;
                          });
                        },
                        icon: isObscured
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                      ),
                    ),
                  ),
                ),
                new FlutterPwValidator(
                  controller: _passwordController,
                  minLength: 6,
                  uppercaseCharCount: 1,
                  lowercaseCharCount: 2,
                  numericCharCount: 1,
                  specialCharCount: 1,
                  width: 400,
                  height: 150,
                  onSuccess: () {
                    print('Success');
                  },
                  onFail: () {
                    print('Fail');
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextFormField(
                    controller: _confirmController,
                    obscureText: isToggle,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Confirm Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isToggle = !isToggle;
                          });
                        },
                        icon: isToggle
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                      ),
                    ),
                  ),
                ),
                new FlutterPwValidator(
                  controller: _confirmController,
                  minLength: 6,
                  uppercaseCharCount: 1,
                  lowercaseCharCount: 2,
                  numericCharCount: 1,
                  specialCharCount: 1,
                  width: 400,
                  height: 150,
                  onSuccess: () {
                    print('Success');
                  },
                  onFail: () {
                    print('Fail');
                  },
                ),
                SizedBox(
                  height: 55,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Center(
                    child: Container(
                      width: 147,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color(0xFF2D201C),
                        borderRadius: BorderRadius.circular(26.5),
                      ),
                      child: TextButton(
                        onPressed: () {
                          
                         showModalBottomSheet(
                          
                           shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(40.0),
  ),
                                context: context,
                                builder: (context) {
                                  return SizedBox(
                                    
                                    height: 350,
                                    
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                        
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(bottom: 30),
                                                child: Image.asset('assets/8.png',scale: 3,),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(bottom: 5),
                                                child: Text(
                                                  'Your Password has been changed',
                                                  style: TextStyle(
                                                    color: Color(0xFF332118),
                                                    fontSize: 18,
                                                    fontFamily:
                                                        'Product Sans Medium',
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.29,
                                                    letterSpacing: -0.41,
                                                  ),
                                                ),
                                              ),
                                            
                                            
                                              Padding(
                                                padding: const EdgeInsets.only(top: 10.0,bottom: 20),
                                                child: Text(
                                                  'Welcome back! Discover now',
                                                  style: TextStyle(
                                                    color: Color(0xFF332118),
                                                    fontSize: 14,
                                                    fontFamily:
                                                        'Product Sans Medium',
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: -0.12,
                                                  ),
                                                ),
                                              ),


                                    ElevatedButton(
                                      
                                      style: ElevatedButton.styleFrom(
                                        
                                        padding: EdgeInsets.symmetric(horizontal: 100,vertical: 20),
                                        backgroundColor: Colors.black,
                                       shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                       ),
                                      ),
                                      onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                                    },
                                     child: Text('Browse home',
                                     style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white
                                     ),
                                     
                                     ),
                                    
                                    ),

                                            ],
                                          ),
                                        ]),
                                  );
                                });
                        },
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
