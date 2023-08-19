import 'package:app/provider/darkThemProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DarkTheme extends StatefulWidget {
  const DarkTheme({super.key});

  @override
  State<DarkTheme> createState() => _DarkThemeState();
}

class _DarkThemeState extends State<DarkTheme> {
  @override
  Widget build(BuildContext context) {
    final themChanger = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Theme Change')),
      body: Column(children: [
        RadioListTile<ThemeMode>(
            title: Text('Light Mode'),
            value: ThemeMode.light,
            groupValue: themChanger.themeMode,
            onChanged: themChanger.setTheme),
        RadioListTile<ThemeMode>(
            title: Text('Dark Mode'),
            value: ThemeMode.dark,
            groupValue: themChanger.themeMode,
            onChanged: themChanger.setTheme),
        RadioListTile<ThemeMode>(
            title: Text('Syatem Mode'),
            value: ThemeMode.system,
            groupValue: themChanger.themeMode,
            onChanged: themChanger.setTheme)
      ]),
    );
  }
}
