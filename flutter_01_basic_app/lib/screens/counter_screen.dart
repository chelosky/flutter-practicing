import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;

  void increase() {
    counter++;
    setState(() {});
  }

  void decress() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('COUNTER TITLE'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Counter Clicks',
              style: fontSize30,
            ),
            Text('${counter}', style: fontSize30)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
          increaseFn: increase, decressFn: decress, resetFn: reset),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decressFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.decressFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.plus_one),
          onPressed: () => increaseFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () => resetFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1),
          onPressed: () => decressFn(),
        ),
      ],
    );
  }
}
