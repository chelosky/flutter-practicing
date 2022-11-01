import 'package:flutter/material.dart';
import 'package:flutter_02_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
              imageUrl:
                  'http://pm1.narvii.com/7431/e5e064ff577671952c4a4a08f0a19ff021aa43ecr1-729-1095v2_uhq.jpg'),
          SizedBox(height: 10),
          CustomCardType2(
              imageUrl:
                  'http://pm1.narvii.com/7431/e5e064ff577671952c4a4a08f0a19ff021aa43ecr1-729-1095v2_uhq.jpg'),
          SizedBox(height: 10),
          CustomCardType2(
              imageUrl:
                  'http://pm1.narvii.com/7431/e5e064ff577671952c4a4a08f0a19ff021aa43ecr1-729-1095v2_uhq.jpg'),
          SizedBox(height: 10),
          CustomCardType2(
              imageUrl:
                  'http://pm1.narvii.com/7431/e5e064ff577671952c4a4a08f0a19ff021aa43ecr1-729-1095v2_uhq.jpg'),
        ],
      ),
    );
  }
}
