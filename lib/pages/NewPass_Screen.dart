import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

class NewPassScreen extends StatefulWidget {

  @override
  State<NewPassScreen> createState() => _NewPassScreenState();
}

class _NewPassScreenState extends State<NewPassScreen> {
bool isObscured = true;
bool isToggle = true;
final _passwordController = TextEditingController();
  

  @override
  Widget build(BuildContext context){
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
                    decoration:  InputDecoration(
                      // border: UnderlineInputBorder(),
                      hintText: 'New Password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                         setState(() {
                           isObscured=!isObscured;
                         });
                        },
                        icon: isObscured? Icon(Icons.visibility_off):Icon(Icons.visibility),
                      ),
                      
                    ),
                  ),
                ),
        
        
        new FlutterPwValidator(
            controller: _passwordController,
            minLength: 6,
            uppercaseCharCount: 2,
            lowercaseCharCount: 2,
            numericCharCount: 3,
            specialCharCount: 1,
            width: 400,
            height: 150,
            onSuccess: (){
              print('Success');
            },
            onFail:(){
              print('Fail');
            },
        ),
        SizedBox(height: 20,),
        Container(
                  child: TextFormField(
                    
                    obscureText: isToggle,
                    
                    decoration:  InputDecoration(
                      prefixIcon: Icon(Icons.lock),
        
                      hintText: 'Confirm Password',
        
                      suffixIcon: IconButton(onPressed:
                       (){
        setState(() {
          isToggle=!isToggle;
        });
                       },
                      icon: isToggle? Icon(Icons.visibility_off): Icon(Icons.visibility),
                      ),
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
      ),
    );
  }
}