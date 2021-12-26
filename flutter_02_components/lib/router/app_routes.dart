import 'package:flutter/material.dart';
import 'package:flutter_02_components/models/models.dart';
import 'package:flutter_02_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'ListView1',
        name: 'ListView1 Screen',
        screen: ListView1Screen(),
        icon: Icons.list_sharp),
    MenuOption(
        route: 'ListView2',
        name: 'ListView2 Screen',
        screen: ListView2Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'Alertas',
        name: 'Alertas Screen',
        screen: AlertScreen(),
        icon: Icons.add_alert),
    MenuOption(
        route: 'Cards',
        name: 'Cards Screen',
        screen: CardScreen(),
        icon: Icons.card_giftcard)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
