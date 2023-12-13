import 'package:flutter/material.dart';
import 'package:new_year_2024/helpers/text_style.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: AssetImage('assets/images/newyear.png'),
        )),
        child: TextButton(
            child: Text('Когда Новый год?', style: myStartTextStyle()),
            onPressed: () {
              Navigator.pushNamed(context, '/count');
            }));
  }
}
