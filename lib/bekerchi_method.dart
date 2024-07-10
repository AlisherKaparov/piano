import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:piano/second_page.dart';

Widget playWidget(
  Color kor,
  String noteText,
  String play,
) {
  return Expanded(
    child: Material(
      color: kor,
      child: InkWell(
        splashColor: kor,
        onTap: () {
          AudioPlayer player = AudioPlayer();
          player.play(AssetSource('audio/note_$play.wav'));
        },
        child: Container(
          height: 40,
          width: double.infinity,
          child: Center(
            child: Text(
              noteText,
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
