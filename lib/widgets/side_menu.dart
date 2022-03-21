import 'package:flutter/material.dart';
import 'package:preferences_app/screens/screens.dart';

class SideMenuScreen extends StatelessWidget {
  const SideMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _DrawerHeader(),
          ListTile(
            leading: Icon(Icons.pages_outlined),
            title: Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, HomeScreen.routerName);
            },
          ),
          ListTile(
            leading: Icon(Icons.people_outline),
            title: Text('People'),
          ),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text('Settings'),
            onTap: () {
              // Navigator.pop(context);
              // Navigator.pushNamed(context, SettingsScreen.routeName);
              Navigator.pushReplacementNamed(
                  context, SettingsScreen.routerName);
            },
          ),
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/menu-img.jpg'),
        fit: BoxFit.cover,
      )),
    );
  }
}
