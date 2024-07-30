import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:music_app_flutter/config/app_colors.dart';
import 'package:music_app_flutter/config/dark_theme.dart';
import 'package:music_app_flutter/feature/presentation/ui/home_page.dart';

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
      body: Stack(
        children: <Widget>[
          const HomePage(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: Container(
                height: 65,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Colors.transparent,
                      Colors.transparent,
                      AppColors.backgroundColor.withAlpha(200),
                      AppColors.backgroundColor
                    ])),
                child: BottomNavigationBar(
                  backgroundColor: Colors.transparent,
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
            ),
          ),
        ],
      ),
    );
  }
}
