import 'package:flutter/material.dart';
import 'package:flutter_02_components/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;

  const CustomCardType2({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(imageUrl),
            width: double.infinity,
            height: 500,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text('Kaladin StormBlessed'),
          )
        ],
      ),
    );
  }
}
