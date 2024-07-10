import 'package:flutter/material.dart';

class UchuncguPage extends StatelessWidget {
  const UchuncguPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Эмнеден баштайбыз'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            print(
              "Баскычты бас",
            );
          },
          child: Container(
            width: 120,
            height: 120,
            color: Colors.teal,
            child: Center(child: Text('kop jaz')),
          ),
        ),
      ),
    );
  }
}
