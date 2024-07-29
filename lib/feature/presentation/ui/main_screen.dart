import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:music_app_flutter/config/app_colors.dart';
import 'package:music_app_flutter/config/dark_theme.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Placeholder(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor:
              Colors.transparent, // Set the splash color to transparent
          highlightColor:
              Colors.transparent, // Set the highlight color to transparent
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColors.backgroundColor.withAlpha(30),
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.textColorMain,
          selectedLabelStyle: secondaryTextStyle,
          unselectedLabelStyle: secondaryTextStyle,
          showUnselectedLabels: false,
          iconSize: 25,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(LucideIcons.house),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(LucideIcons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(LucideIcons.music),
              label: "Library",
            ),
          ],
        ),
      ),
    );
  }
}
