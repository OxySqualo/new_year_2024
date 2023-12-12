import 'package:flutter/material.dart';
import 'package:new_year_2024/count_screen.dart';
import 'package:new_year_2024/text_style.dart';

myWidget23() {
  return Container(
    height: double.infinity,
    width: double.infinity,
    decoration: const BoxDecoration(
        image: DecorationImage(
      fit: BoxFit.fitHeight,
      image: AssetImage('assets/images/newyear_0.png'),
    )),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          Text(
            'до Нового года',
            style: myTextStyle(),
          ),
          const SizedBox(height: 30),
          Text(
            getLeftDay(getLastDigit()),
            style: myTextStyle(),
          ),
          const SizedBox(height: 14),
          Text(
            '$difference',
            style: myNumberTextStyle(),
          ),
          const SizedBox(height: 14),
          Text(
            getDayName(getLastDigit()),
            style: myTextStyle(),
          ),
        ],
      ),
    ),
  );
}

Container myWidget24() {
  return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fitHeight,
        image: AssetImage('assets/images/newyear_1.png'),
      )),
      child: Center(
        child: Text('С НОВЫМ ГОДОМ!', style: myTextStyle()),
      ));
}
