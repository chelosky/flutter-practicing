import 'package:flutter/material.dart';
import 'package:flutter_music_player_1/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: HomeScreen.routePath,
      routes: {
        HomeScreen.routePath: (context) => const HomeScreen(),
      },
    );
  }
}
