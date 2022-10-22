import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:spotify_clone/constants/constants.dart';
import 'package:spotify_clone/texts/apptexts.dart';

import '../widgets/song_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController scrollController;
  double imageSize = 0;
  double initialSize = 240;
  double containerHeight = 500;
  double containerinitalHeight = 500;
  double imageOpacity = 1;
  bool showTopBar = false;

  @override
  void initState() {
    imageSize = initialSize;
    scrollController = ScrollController()
      ..addListener(() {
        imageSize = initialSize - scrollController.offset;
        if (imageSize < 0) {
          imageSize = 0;
        }
        containerHeight = containerinitalHeight - scrollController.offset;
        if (containerHeight < 0) {
          containerHeight = 0;
        }
        imageOpacity = imageSize / initialSize;
        if (scrollController.offset > 110) {
          showTopBar = true;
        } else {
          showTopBar = false;
        }
        print(scrollController.offset);
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //back buttton
          // const Positioned(
          //   top: 70,
          //   left: 18,
          //   child: Icon(
          //     Iconsax.arrow_left_2,
          //     color: Colors.white,
          //   ),
          // ),

          //background container
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff524C3B),
                  Color(0xff1F1E1B),
                  Color(0xff121212)
                ],
              ),
            ),
            child:
                //page content
                SingleChildScrollView(
              controller: scrollController,
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 70,
                      ),

                      //image
                      Container(
                        // height: containerHeight,
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        // color: Colors.pink,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Opacity(
                              opacity: imageOpacity.clamp(0, 1.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(.25),
                                      offset: const Offset(0, 20),
                                      blurRadius: 32,
                                      spreadRadius: 14,
                                    )
                                  ],
                                ),
                                child: Image(
                                  image: const AssetImage(
                                    "images/albumArt.png",
                                  ),
                                  width: imageSize,
                                  height: imageSize,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ),

                      //image
                      // Padding(
                      //   padding:
                      //       const EdgeInsets.only(top: 70.0, right: 18, left: 18),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       const SizedBox(
                      //         width: 24,
                      //       ),
                      //       Image.asset(
                      //         "images/albumArt.png",
                      //         scale: 2,
                      //         //width: MediaQuery.of(context).size.width,
                      //         //fit: BoxFit.cover,
                      //       ),
                      //       const SizedBox(
                      //         width: 24,
                      //       ),
                      //     ],
                      //   ),
                      // ),

                      //song title
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: AppTextLarge(
                            text: 'Mr Morale & The Big Steppers',
                            color: Colors.white,
                            size: 22),
                      ),

                      //artist name
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0, top: 10),
                        child: AppText(
                          text: 'Kendrick Lamar',
                          color: Colors.white,
                          size: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),

                      //album / play button row
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 14.0, bottom: 25, left: 18, right: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    AppText(
                                      text: 'Album',
                                      color: AppColors.grey2,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Image.asset(
                                        "images/dot.png",
                                        scale: 1.5,
                                      ),
                                    ),
                                    AppText(
                                      text: '2022',
                                      color: AppColors.grey2,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 28.0),
                                      child: Image.asset(
                                        "images/heart.png",
                                        scale: 2,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 28.0),
                                      child: Image.asset(
                                        "images/download.png",
                                        scale: 2,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 28.0),
                                      child: Image.asset(
                                        "images/more.png",
                                        scale: 2,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Image.asset(
                              "images/Play.png",
                              scale: 2,
                            )
                          ],
                        ),
                      ),

                      //songs
                      SongCard(
                        songName: "United In Grief",
                      ),
                      SongCard(
                        songName: "N95",
                      ),
                      SongCard(
                        songName: "Worlwide Steppers",
                      ),
                      SongCard(
                        songName: "Die Hard",
                        artist: "Kendrick Lamar, Blxst, Amanda Reifer",
                      ),
                      SongCard(
                        songName: "Father Time",
                        artist: "Kendrick Lamar, Sampha",
                      ),
                      SongCard(
                        songName: "Rich - Interlude",
                      ),
                      SongCard(
                        songName: "Rich Spirit",
                      ),
                      SongCard(
                        songName: "We Cry Together",
                        artist: "Kendrick Lamar, Taylour Paige",
                      ),
                      SongCard(
                        songName: "Purple Hearts",
                        artist:
                            "Kendrick Lamar, Summer Walker, Ghostface Killah",
                      ),

                      SongCard(
                        songName: "Count Me Out",
                      ),

                      SongCard(songName: "Crown"),

                      SongCard(
                          songName: "Silent Hill",
                          artist: 'Kendrick Lamar, Kodak Black'),

                      //

                      const SizedBox(
                        height: 100,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),

          //bottom player card
          Positioned(
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                //width: MediaQuery.of(context).size.width,
                width: 400,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xff333027),
                ),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 12, top: 8, bottom: 12),
                              child: Image.asset(
                                "images/small artwork.png",
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppText(
                                  text: "Count Me Out",
                                  color: Colors.white,
                                  size: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                AppText(
                                  text: "Kendrick Lamar",
                                  color: const Color(0xffADACA9),
                                  size: 13,
                                  fontWeight: FontWeight.normal,
                                ),
                              ],
                            ),
                          ],
                        ),

                        //heart and play button
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28),
                          child: Row(
                            children: [
                              Image.asset(
                                "images/filledHeart.png",
                                scale: 1.9,
                              ),
                              const SizedBox(
                                width: 33,
                              ),
                              Image.asset(
                                "images/pause.png",
                                scale: 1.7,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                    // player line 1
                    Positioned(
                      bottom: 0,
                      child: Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 3,
                        width: 348,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.24),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),

                    //player line 2
                    Positioned(
                      bottom: 0,
                      child: Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 3,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // App bar

          Positioned(
              child: SizedBox(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              color: showTopBar
                  ? const Color(0xFF3F3B2F).withOpacity(1)
                  : const Color(0xFF3F3B2F).withOpacity(0),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: SafeArea(
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        left: 0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Iconsax.arrow_left_2,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      AnimatedOpacity(
                        duration: const Duration(milliseconds: 250),
                        opacity: showTopBar ? 1 : 0,
                        child: AppText(
                          text: "Mr Morale & The Big Steppers",
                          color: Colors.white,
                          size: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
