import 'package:flutter/material.dart';
import 'package:flutter_donnut_ui_example/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myTabs = [
      const MyTab(
        iconPath: 'assets/icons/donut.png',
      ),
      const MyTab(
        iconPath: 'assets/icons/burger.png',
      ),
      const MyTab(
        iconPath: 'assets/icons/smoothie.png',
      ),
      const MyTab(
        iconPath: 'assets/icons/pancakes.png',
      ),
      const MyTab(
        iconPath: 'assets/icons/pizza.png',
      ),
    ];

    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () => {},
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
              )
            ],
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10,
                ),
                child: Row(
                  children: const [
                    Text(
                      'I want to ',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      'EAT',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              TabBar(
                tabs: myTabs,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    DonutTab(),
                    const BurgerTab(),
                    const SmoothieTab(),
                    const PancakeTab(),
                    const PizzaTab(),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
