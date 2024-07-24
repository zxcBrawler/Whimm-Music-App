import 'package:flutter/material.dart';
import 'package:music_app_flutter/config/dark_theme.dart';
import 'package:music_app_flutter/feature/presentation/ui/home_page.dart';
import 'package:music_app_flutter/feature/presentation/ui/login_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkAppTheme,
      home: const HomePage(),
    );
  }
}
