import 'package:flutter/material.dart';
import 'package:music_app_flutter/config/app_colors.dart';
import 'package:music_app_flutter/config/dark_theme.dart';

class StartupPageArtists extends StatefulWidget {
  const StartupPageArtists({super.key});

  @override
  State<StartupPageArtists> createState() => _StartupPageArtistsState();
}

class _StartupPageArtistsState extends State<StartupPageArtists> {
  @override
  Widget build(BuildContext context) {
    bool isSelected = false;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "Select  some of your favourite artists ",
                  style: headersTextStyle,
                ),
                const Text(
                  "We will automatically subscribe you to them",
                  style: hintTextStyle,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 420,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Container(
                                    height: 175,
                                    decoration: BoxDecoration(
                                        border: isSelected
                                            ? Border.all(
                                                color: AppColors.primaryColor,
                                                width: 2)
                                            : null,
                                        borderRadius: BorderRadius.circular(8),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.asset(
                                                    "assets/logoMusic.png")
                                                .image)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(6),
                                              bottomRight: Radius.circular(6)),
                                          child: Container(
                                            color: AppColors.blackTransparent,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Artist name",
                                                        style:
                                                            secondaryTextStyle
                                                                .copyWith(
                                                                    fontSize:
                                                                        14),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right: 6),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          25),
                                                              child: Container(
                                                                color: AppColors
                                                                    .grey450,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                          6.0),
                                                                  child: Text(
                                                                    "#rap",
                                                                    style: secondaryTextStyle.copyWith(
                                                                        fontSize:
                                                                            12),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right: 6),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          25),
                                                              child: Container(
                                                                color: AppColors
                                                                    .grey450,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                          6.0),
                                                                  child: Text(
                                                                    "#underground",
                                                                    style: secondaryTextStyle.copyWith(
                                                                        fontSize:
                                                                            12),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  const Spacer(),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        "12.1 M",
                                                        style:
                                                            secondaryTextStyle
                                                                .copyWith(
                                                                    fontSize:
                                                                        16),
                                                      ),
                                                      Text(
                                                        "monthly listeners",
                                                        style:
                                                            secondaryTextStyle
                                                                .copyWith(
                                                                    fontSize:
                                                                        12),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )),
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
