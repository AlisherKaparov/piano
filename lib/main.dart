// ignore_for_file: must_be_immutable

import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';
import 'package:piano/bekerchi_method.dart';
import 'package:piano/const/colors/app_colors.dart';
import 'package:piano/const/text_styles/app_text_styles.dart';
import 'package:piano/second_page.dart';

void main() {
  runApp(PianoApp());
}

class PianoApp extends StatelessWidget {
  PianoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            playWidget(AppColors.red, 'do', '1'),
            playWidget(AppColors.blue, 're', '2'),
            playWidget(Colors.lightGreen, 'me', '3'),
            playWidget(Colors.green, 'fa', '4'),
            playWidget(Colors.blue, 'so', '5'),
            playWidget(Colors.amber, 'lya', '6'),
            playWidget(Colors.orange, 'si', '7'),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
                child: Container(
                  width: double.infinity,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      'Басып ойно',
                      style: AppTextStyles.white30w800,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
