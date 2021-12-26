import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final List<String> radiants = const [
    'Kaladin',
    'Shallan',
    'Dalinar',
    'Teft',
    'Jasnah'
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View 1'),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemCount: radiants.length,
        itemBuilder: (context, index) {
          return ListTile(
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.indigo,
            ),
            title: Text(radiants[index]),
            onTap: () => {},
          );
        },
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
