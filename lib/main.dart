import 'package:flutter/material.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/services.dart';
import 'package:new_year_2024/screen/count_screen.dart';
import 'package:new_year_2024/screen/start_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const NewYearApp());
  FlameAudio.bgm.initialize();
  FlameAudio.bgm.play('elochka.mp3', volume: 0.2);
}

class NewYearApp extends StatelessWidget {
  const NewYearApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const StartScreen(),
        '/count': (BuildContext context) => const CountScreen(),
      },
    );
  }
}
