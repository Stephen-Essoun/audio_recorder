import 'package:flutter/material.dart';
import 'package:play_recorder_f4rg0/home.dart';
import 'package:play_recorder_f4rg0/play&record.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.cyan),
      initialRoute: 'home',
      routes: {
        //'lobby': (context) => const Lobby(),
        'home': (context) => const Home(),
        'rp': (context) => const RecorPlay(),
      },
    );
  }
}
