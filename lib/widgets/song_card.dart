import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/constants.dart';
import 'package:spotify_clone/texts/apptexts.dart';

class SongCard extends StatelessWidget {
  SongCard({this.artist = "Kendrick Lamar", required this.songName});
  final String songName;
  final String artist;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: songName,
                color: Colors.white,
                size: 17,
                fontWeight: FontWeight.normal,
              ),
              const SizedBox(
                height: 5,
              ),
              AppText(
                text: artist,
                color: AppColors.grey1,
                size: 14,
                fontWeight: FontWeight.normal,
              )
            ],
          ),
          Image.asset(
            "images/more.png",
            scale: 1.5,
          )
        ],
      ),
    );
  }
}
