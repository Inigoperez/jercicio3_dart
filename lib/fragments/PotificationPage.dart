import 'package:flutter/material.dart';

import 'package:ejercicio3_dart/navigationDrawer/NavigationDrawer.dart';

class NotificationPage extends StatelessWidget {
  static const String routeName = '/notificationPage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Notifications"),
        ),
        drawer: NavigationDrawer(),
        body: Center(child: Text("This is notification page")));
  }
}
