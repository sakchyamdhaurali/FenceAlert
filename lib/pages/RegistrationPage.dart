import 'package:flutter/material.dart';
import 'package:geofence/pages/LoginPage.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool isObscured= true;
  bool isToggle =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 93, left: 32, right: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create \nyour account',
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
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your name',
                  ),
                ),
              ),
              Container(
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Email Address',
                  ),
                ),
              ),
              Container(
                child: TextFormField(

                  obscureText: isObscured,
                  decoration:  InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Password',
                    // prefixIcon: Icon(Icons.lock),
suffixIcon: IconButton(onPressed: (){
setState(() {
  isObscured=!isObscured;
});
}, icon: isObscured? Icon(Icons.visibility):Icon(Icons.visibility_off))
                  ),
                ),
              ),
              Container(
                child: TextFormField(
                  obscureText: isToggle,
                  decoration:  InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Confirm Password',
                                        // prefixIcon: Icon(Icons.lock),
suffixIcon: IconButton(onPressed: (){
setState(() {
  isToggle=!isToggle;
});
}, icon: isObscured? Icon(Icons.visibility):Icon(Icons.visibility_off))
                  ),
                ),
              ),
              SizedBox(
                height: 44,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 82),
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
                              builder: (context) => const LoginPage()),
                        );
                      },
                      child: Text(
                        'Sign Up ',
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
              SizedBox(
                height: 75,
              ),
              Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
      
                  // onTap: () => MaterialPageRoute(builder: (context)=> LoginPage()),
      
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: Text(
                      'Log In ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    ));
  }
}
