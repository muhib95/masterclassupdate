import 'package:flutter/material.dart';
import 'package:master_class/first_page.dart';
import 'package:master_class/home.dart';
import 'package:master_class/second_page.dart';
import 'package:master_class/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final names=['Muhib','Akash','Rahi'];
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ('babu'),
      home: const FirstPage(),

      routes: {

        // '/': (context) => const FirstPage(),

        '/second': (context) => const SecondPage(),
        '/home': (context) => const Home(),
        '/settings': (context) => const SettingsPage(),

      },

    );
  }
}
