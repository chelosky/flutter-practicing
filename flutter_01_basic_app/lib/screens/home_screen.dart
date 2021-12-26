import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    int counter = 10;

    return Scaffold(
      appBar: AppBar(
        title: const Text('APP BAR TITLE'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Clicks Counter',
              style: fontSize30,
            ),
            Text('${counter}', style: fontSize30)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: () {
          print('TEST ${counter}');
          counter++;
        },
      ),
    );
  }
}
