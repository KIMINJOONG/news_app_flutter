import 'package:flutter/material.dart';
import 'package:news_app_flutter/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: SwitchListTile(
          onChanged: (bool value) {
            themeState.setDarkTheme = value;
          },
          title: Text('Theme'),
          secondary: Icon(themeState.getDarkTheme
              ? Icons.dark_mode_outlined
              : Icons.light_mode_outlined),
          value: themeState.getDarkTheme,
        ),
      ),
    );
  }
}
