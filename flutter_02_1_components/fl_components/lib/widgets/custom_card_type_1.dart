import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(
            Icons.abc,
            color: AppTheme.primary,
          ),
          title: Text('CARD EXAMPLE'),
          subtitle: Text(
              'Est occaecat ut fugiat pariatur ut eiusmod consectetur sit magna commodo. Aute non laboris Lorem Lorem dolor ullamco consectetur exercitation. Aliquip do dolor nisi exercitation laboris incididunt.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
              TextButton(onPressed: () {}, child: const Text('Ok')),
            ],
          ),
        )
      ]),
    );
  }
}
