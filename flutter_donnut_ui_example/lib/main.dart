import 'package:flutter/material.dart';
import 'package:flutter_donnut_ui_example/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DONNUT UI TEST',
      initialRoute: HomeScreen.routerName,
      routes: {
        HomeScreen.routerName: (_) => const HomeScreen(),
      },
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
