import 'package:ejercicio3_dart/providers/Contador.dart';
import 'package:flutter/material.dart';

import 'package:ejercicio3_dart/navigationDrawer/NavigationDrawer.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  static const String routeName = '/profilePage';

  @override
  Widget build(BuildContext context) {
    final contador = Provider.of<Contador>(context);
    return new Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      drawer: NavigationDrawer(),
      body: Center(
        child: Text(
          contador.contador.toString(),
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
