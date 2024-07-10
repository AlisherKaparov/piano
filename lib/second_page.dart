import 'package:flutter/material.dart';
import 'package:piano/bekerchi_method.dart';
import 'package:piano/const/colors/app_colors.dart';
import 'package:piano/uchuncgu_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second bet'),
      ),
      body: Column(
        children: [
          playWidget(AppColors.red, 'do', '1'),
          playWidget(Colors.yellow, 're', '2'),
          playWidget(Colors.amberAccent, 'me', '3'),
          playWidget(Colors.lightBlue, 'fa', '4'),
          playWidget(Colors.white30, 'so', '5'),
          playWidget(Colors.indigo, 'lya', '6'),
          playWidget(Colors.transparent, 'si', '7'),
          playWidget(Colors.indigoAccent, 'me', '3'),
          playWidget(const Color.fromARGB(255, 69, 73, 93), 'd0', '3'),
          bashkaMethod(context),
        ],
      ),
    );
  }

  Expanded bashkaMethod(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => UchuncguPage()));
        },
        child: Container(
          width: double.infinity,
          color: Colors.greenAccent,
          child: const Center(
            child: Text(
              'Жоок баспа',
              style: TextStyle(fontSize: 35, color: Colors.pinkAccent),
            ),
          ),
        ),
      ),
    );
  }
}
