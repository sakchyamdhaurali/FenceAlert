import 'package:flutter/material.dart';
import 'package:geofence/pages/LoginPage.dart';
import 'package:geofence/pages/LoginPageOwner.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                opacity: 0.67,
                image: AssetImage("assets/tower.jpg"),
                fit: BoxFit.fill),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to FenceAlert',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'ProductSans',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 36,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginPageOwner()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Text(
                    'Login as a Shop Owner',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                'Or',
                style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 29,
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 13,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Text(
                    'Login as a User',
                    style: TextStyle(
                      fontSize: 15,
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
