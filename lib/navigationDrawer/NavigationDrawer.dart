import 'package:flutter/material.dart';

import 'package:ejercicio3_dart/routes/PageRoute.dart';
import 'package:ejercicio3_dart/widget/CreateDrawerHeader.dart';
import 'package:ejercicio3_dart/widget/CreateDrawerBodyItem.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createDrawerHeader(),
          createDrawerBodyItem(
            icon: Icons.home,
            text: 'Contador',
            onTap: () =>
                Navigator.pushReplacementNamed(context, PageRoutes.home),
          ),
          createDrawerBodyItem(
            icon: Icons.account_circle,
            text: 'Resultado Contador',
            onTap: () =>
                Navigator.pushReplacementNamed(context, PageRoutes.profile),
          ),
          createDrawerBodyItem(
            icon: Icons.event_note,
            text: 'Events',
            onTap: () =>
                Navigator.pushReplacementNamed(context, PageRoutes.event),
          ),
          Divider(),
          createDrawerBodyItem(
            icon: Icons.notifications_active,
            text: 'Notifications',
            onTap: () => Navigator.pushReplacementNamed(
                context, PageRoutes.notification),
          ),
          createDrawerBodyItem(
            icon: Icons.contact_phone,
            text: 'Contact Info',
            onTap: () =>
                Navigator.pushReplacementNamed(context, PageRoutes.contact),
          ),
          ListTile(
            title: Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
