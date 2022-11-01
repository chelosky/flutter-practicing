import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              backgroundColor: Colors.red,
              child: Text('ML'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage(
              'https://steamuserimages-a.akamaihd.net/ugc/907906080762428125/880FD77A8C8B9E1B34E956142ADA4DE6E916FC7E/?imw=512&&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false'),
        ),
      ),
    );
  }
}
