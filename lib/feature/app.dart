import 'package:flutter/material.dart';
import 'package:music_app_flutter/config/dark_theme.dart';
import 'package:music_app_flutter/feature/presentation/ui/home_page.dart';
import 'package:music_app_flutter/feature/presentation/ui/login_page.dart';
import 'package:music_app_flutter/feature/presentation/ui/main_screen.dart';
import 'package:music_app_flutter/feature/presentation/ui/startup_page_artists.dart';
import 'package:music_app_flutter/feature/presentation/ui/startup_page_genres.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkAppTheme,
      home: const MainScreen(),
    );
  }
}
