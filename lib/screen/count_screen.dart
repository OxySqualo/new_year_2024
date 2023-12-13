import 'package:flutter/material.dart';
import 'package:new_year_2024/helpers/data.dart';
import 'package:new_year_2024/helpers/widget_newyear.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({super.key});

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  @override
  void initState() {
    getDayName(difference);
    getLeftDay(difference);
    getLastDigit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Countdown Timer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Veles',
      ),
      home: const CountdownScreen(),
    );
  }
}

final now = DateTime.now();
final newYear = DateTime(now.year + 1, 1, 1);

// 1 января следующего года
final difference = newYear.difference(now).inDays;

class CountdownScreen extends StatelessWidget {
  const CountdownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
            child: (difference == 0 || difference < 0)
                ? myWidget24()
                : myWidget23()),
      ),
    );
  }
}
