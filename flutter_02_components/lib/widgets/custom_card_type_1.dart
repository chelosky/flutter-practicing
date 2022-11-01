import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_02_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: AppTheme.primary,
            ),
            title: Text('CARD TITLE'),
            subtitle: Text(
                'Commodo esse esse incididunt magna laboris nisi. Exercitation culpa veniam anim aliquip minim do nulla. Exercitation anim deserunt ex duis Lorem enim exercitation nostrud mollit culpa dolore. Consectetur in occaecat ea Lorem non veniam do deserunt minim eu. Et ea aute dolor tempor deserunt labore culpa incididunt est cillum minim. Aliquip magna et mollit dolore nulla aute. Ea voluptate laboris id excepteur proident nulla amet veniam.'),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: Text('Cancel')),
                TextButton(onPressed: () {}, child: Text('Ok'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
