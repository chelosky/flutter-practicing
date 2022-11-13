import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  List donutsOnSale = [
    ["Ice Cream", '36', Colors.blue, "assets/images/icecream_donut.png"],
    ["Strawberry", '45', Colors.red, "assets/images/strawberry_donut.png"],
    ["Grape Ape", '84', Colors.purple, "assets/images/grape_donut.png"],
    ["Choco", '95', Colors.brown, "assets/images/chocolate_donut.png"],
  ];

  DonutTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: donutsOnSale.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (_, index) {
        final donut = donutsOnSale[index];
        return _DonutTile(
          donutFlavor: donut[0],
          donutPrice: donut[1],
          donutColor: donut[2],
          imageName: donut[3],
        );
      },
    );
  }
}

class _DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final String imageName;
  final MaterialColor donutColor;
  const _DonutTile({
    Key? key,
    required this.donutFlavor,
    required this.donutPrice,
    required this.imageName,
    required this.donutColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[200],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(
                        12,
                      ),
                      topRight: Radius.circular(
                        12,
                      ),
                    ),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '\$$donutPrice',
                    style: TextStyle(
                      color: donutColor[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              child: Image.asset(
                imageName,
              ),
            ),
            Text(
              donutFlavor,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              'Dunkins',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.pink[400],
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.grey[700],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
