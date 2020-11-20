import 'package:flutter/material.dart';

import 'package:ejercicio3_dart/routes/PageRoute.dart';
import 'package:ejercicio3_dart/fragments/HomePage.dart';
import 'package:ejercicio3_dart/fragments/ContactPage.dart';
import 'package:ejercicio3_dart/fragments/EventPage.dart';
import 'package:ejercicio3_dart/fragments/ProfilePage.dart';
import 'package:ejercicio3_dart/fragments/PotificationPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'NavigationDrawer Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        PageRoutes.home: (context) => HomePage(),
        PageRoutes.contact: (context) => ContactPage(),
        PageRoutes.event: (context) => EventPage(),
        PageRoutes.profile: (context) => ProfilePage(),
        PageRoutes.notification: (context) => NotificationPage(),
      },
    );
  }
}
