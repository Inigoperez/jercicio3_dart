import 'package:ejercicio3_dart/providers/Contador.dart';
import 'package:flutter/material.dart';

import 'package:ejercicio3_dart/navigationDrawer/NavigationDrawer.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/homePage';

  @override
  Widget build(BuildContext context) {
    final contador = Provider.of<Contador>(context);
    return new Scaffold(
      appBar: AppBar(
        title: Text("Contador"),
      ),
      drawer: NavigationDrawer(),
      body: Center(
        child: Column(
          children: [
            FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              onPressed: () {
                contador.sumar();
              },
              child: Text(
                " +1 ",
                style: TextStyle(fontSize: 14.0),
              ),
            ),
            Text(
              contador.contador.toString(),
              style: TextStyle(fontSize: 25.0),
            ),
            FlatButton(
              color: Colors.red,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.redAccent,
              onPressed: () {
                contador.restar();
              },
              child: Text(
                " -1 ",
                style: TextStyle(fontSize: 14.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
