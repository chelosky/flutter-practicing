import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final List<String> radiants = const [
    'Kaladin',
    'Shallan',
    'Dalinar',
    'Teft',
    'Jasnah'
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View 1'),
      ),
      body: ListView(
        children: <Widget>[
          ...radiants
              .map((e) => ListTile(
                  // leading: Icon(Icons.access_alarms),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                  title: Text(e)))
              .toList(),
          Divider()
        ],
      ),
    );
  }
}
