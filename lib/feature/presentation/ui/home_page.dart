import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:music_app_flutter/config/app_colors.dart';
import 'package:music_app_flutter/config/dark_theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/logoMusic.png"),
                        ),
                      ),
                      const Expanded(
                        child: Text(
                          "Home",
                          style: headersTextStyle,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            LucideIcons.search,
                            size: 25,
                            color: AppColors.textColorMain,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            LucideIcons.bell,
                            size: 25,
                            color: AppColors.textColorMain,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            LucideIcons.history,
                            size: 25,
                            color: AppColors.textColorMain,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Text(
                        "Recently played",
                        style: headersTextStyle.copyWith(fontSize: 22),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            LucideIcons.chevronRight,
                            color: AppColors.textColorMain,
                            size: 30,
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 200.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            height: 125,
                            width: 125,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Playlist name",
                            style: secondaryTextStyle.copyWith(fontSize: 14),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    "Artists you might like",
                    style: headersTextStyle.copyWith(fontSize: 22),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        LucideIcons.chevronRight,
                        color: AppColors.textColorMain,
                        size: 30,
                      ))
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 300.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              height: 175,
                              width: 325,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset("assets/logoMusic.png")
                                          .image)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    color: AppColors.blackTransparent,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Artist name",
                                                style: secondaryTextStyle
                                                    .copyWith(fontSize: 14),
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 6),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                      child: Container(
                                                        color:
                                                            AppColors.grey450,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(6.0),
                                                          child: Text(
                                                            "#rap",
                                                            style:
                                                                secondaryTextStyle
                                                                    .copyWith(
                                                                        fontSize:
                                                                            12),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 6),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                      child: Container(
                                                        color:
                                                            AppColors.grey450,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(6.0),
                                                          child: Text(
                                                            "#underground",
                                                            style:
                                                                secondaryTextStyle
                                                                    .copyWith(
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
                                                style: secondaryTextStyle
                                                    .copyWith(fontSize: 16),
                                              ),
                                              Text(
                                                "monthly listeners",
                                                style: secondaryTextStyle
                                                    .copyWith(fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ));
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
