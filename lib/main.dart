import 'package:flutter/material.dart';
import 'package:geofence/pages/HomePage.dart';
import 'package:geofence/pages/LoginPage.dart';

// import 'pages/RegistrationPage.dart';

void main() {
  runApp(const GeoFence());
}

class GeoFence extends StatelessWidget {
  const GeoFence({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GeoFence',
      // home:  RegistrationPage(),
      routes: {
        '/': (context) => HomePage(),
      },
    );
  }
}
