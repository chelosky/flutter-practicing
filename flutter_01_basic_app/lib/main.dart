import 'package:flutter/material.dart';
import 'package:flutter_01_basic_app/screens/counter_screen.dart';

import 'package:flutter_01_basic_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: CounterScreen());
    // debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
