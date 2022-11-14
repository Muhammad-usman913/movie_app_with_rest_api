import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/provider/theme_changer.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme changer app'),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
              title: Text('Light Mode'),
              value: ThemeMode.light,
              groupValue: themeProvider.themeMode,
              onChanged: themeProvider.setTheme),
          RadioListTile<ThemeMode>(
              title: Text('Dark Mode'),
              value: ThemeMode.dark,
              groupValue: themeProvider.themeMode,
              onChanged: themeProvider.setTheme),
          RadioListTile<ThemeMode>(
              title: Text('System Mode'),
              value: ThemeMode.system,
              groupValue: themeProvider.themeMode,
              onChanged: themeProvider.setTheme),
        ],
      ),
    );
  }
}
