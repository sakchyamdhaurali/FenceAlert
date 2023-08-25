import 'package:flutter/material.dart';


class NewPassScreen extends StatefulWidget {

  @override
  State<NewPassScreen> createState() => _NewPassScreenState();
}

class _NewPassScreenState extends State<NewPassScreen> {
var _isObscured = true;

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
                  obscureText: _isObscured,
                  decoration: const InputDecoration(
                    // border: UnderlineInputBorder(),
                    hintText: 'New Password',
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                ),
              ),

SizedBox(height: 20,),
Container(
                child: TextFormField(
                  obscureText: false,
                  decoration: const InputDecoration(
                    // border: UnderlineInputBorder(),
                    hintText: 'Confirm Password',
                    suffixIcon: Icon(Icons.visibility),
                  ),
                ),
              ),

SizedBox(height: 55,),




             


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
                     print('Confirmed');
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
    );
  }
}