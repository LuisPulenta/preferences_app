import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:preferences_app/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  static const String routeName = 'Settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkmode = false;
  int gender = 1;
  String name = 'Pedro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ajustes',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Divider(),
              SwitchListTile.adaptive(
                value: isDarkmode,
                title: Text('Darkmode'),
                onChanged: (value) {
                  isDarkmode = value;
                  setState(() {});
                },
              ),
              Divider(),
              RadioListTile<int>(
                  title: Text('Masculino'),
                  value: 1,
                  groupValue: gender,
                  onChanged: (value) {
                    gender = value ?? 1;
                    setState(() {});
                  }),
              Divider(),
              RadioListTile<int>(
                  title: Text('Femenino'),
                  value: 2,
                  groupValue: gender,
                  onChanged: (value) {
                    gender = value ?? 2;
                    setState(() {});
                  }),
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: 'Luis',
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre del usuario',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: SideMenuScreen(),
    );
  }
}
