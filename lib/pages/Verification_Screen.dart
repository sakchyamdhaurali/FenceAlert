import 'package:flutter/material.dart';
import 'package:geofence/widgets/OvalShape.dart';

import 'NewPass_Screen.dart';

class VerificationScreen extends StatelessWidget {
const VerificationScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
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
                    'Verification code',
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

'Please enter the verification code we sent to your email address',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'ProductSans Light',
                  fontWeight: FontWeight.w400,
                  height: 1.71,
                ),
              ),
              SizedBox(
                height: 58,
              ),


    Padding(
      padding: const EdgeInsets.only(left: 45.0,right: 40),
      child: InkWell(
        onTap: () {
          print('I am clicked');
        },
        child: Container(
          width: 268,
          height: 58,
          child: Row(
            children: [
              OvalShape(),
              SizedBox(width: 12,),
              OvalShape(),
              SizedBox(width: 12,),
              OvalShape(),
              SizedBox(width: 12,),
              OvalShape(),
          
            ],
          ),
          
        ),
      ),
    ),

SizedBox(height: 55,),

Text('Resend in 00:10',
style: TextStyle(
  fontFamily: 'ProductSans Light',
  color: Color(0x7F121420),
  fontWeight: FontWeight.w300,
  fontSize: 15,

),
),


              // SizedBox(
              //   height: 0,
              // ),



              Padding(
                padding: const EdgeInsets.only(top:60.0),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NewPassScreen()),
                        );
                      },
                      child: Text(
                        'Verify',
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
    );
  }
}