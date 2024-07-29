import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app_flutter/config/app_colors.dart';
import 'package:music_app_flutter/config/dark_theme.dart';

class StartupPageGenres extends StatefulWidget {
  const StartupPageGenres({super.key});

  @override
  State<StartupPageGenres> createState() => _StartupPageGenresState();
}

class _StartupPageGenresState extends State<StartupPageGenres> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "Tell us about your music preferences.",
                  style: headersTextStyle,
                ),
                const Text(
                  "We will recommend songs based on your preferences.",
                  style: hintTextStyle,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 420,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 3 / 2),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          color: AppColors.grey450,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Rock",
                              style: secondaryTextStyle,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Next",
                            style: buttonsTextStyle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Skip for now",
                  style: hintTextStyle,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
