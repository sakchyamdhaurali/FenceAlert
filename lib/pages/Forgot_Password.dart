import 'package:flutter/material.dart';

import 'Verification_Screen.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                    'Forgot password?',
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
                height: 15,
              ),
              Text(
                'Enter email associated with your account and we’ll send and email with instructions to reset your password',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'ProductSans Light',
                  fontWeight: FontWeight.w400,
                  height: 1.71,
                ),
              ),
              SizedBox(
                height: 54,
              ),

              Container(
                width: 360,
                height: 60,
                decoration: BoxDecoration(color: Colors.white),
                child: TextFormField(
                  decoration: const InputDecoration(
                    disabledBorder: OutlineInputBorder(),
                    focusedBorder: UnderlineInputBorder(),
                    icon: Icon(
                      Icons.email_outlined,
                    ),
                    labelText: 'Enter your Email Address',
                  ),
                ),
              ),

              SizedBox(
                height: 80,
              ),

              Center(
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
                            builder: (context) => VerificationScreen()),
                      );
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),

              //  Container(
              //   width: 360,
              //   height: 60,
              //   decoration: BoxDecoration(color: Colors.white,
              //   ),

              //    child: Row(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [

              //     Icon(Icons.email_outlined,
              //     ),
              //     SizedBox(width: 19.5,),
              //     Text('Enter your mail here'),

              //                  ]),
              //  ),
              //  Container(
              //     width: 360 ,
              //     height: 1,
              //     decoration:BoxDecoration(color:Colors.black)
              //     ),
            ],
          ),
        ),
      ),
    );
  }
}
