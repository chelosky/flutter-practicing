import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

abstract class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: 'home',
    //     name: 'Home Screen',
    //     screen: const HomeScreen(),
    //     icon: Icons.home_outlined),
    MenuOption(
        route: 'alert',
        name: 'Alert Screen',
        screen: const AlertScreen(),
        icon: Icons.bus_alert_outlined),
    MenuOption(
        route: 'card',
        name: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.card_giftcard_outlined),
    MenuOption(
        route: 'listview1',
        name: 'ListView 1 Screen',
        screen: const Listview1Screen(),
        icon: Icons.list_alt_outlined),
    MenuOption(
        route: 'listview2',
        name: 'ListView 2 Screen',
        screen: const Listview2Screen(),
        icon: Icons.line_style_outlined),
    MenuOption(
        route: 'avatar',
        name: 'Avatar Screen',
        screen: const AvatarScreen(),
        icon: Icons.catching_pokemon_outlined),
    MenuOption(
        route: 'animated',
        name: 'Animated Screen',
        screen: const AnimatedScreen(),
        icon: Icons.animation_outlined),
    MenuOption(
        route: 'inputs',
        name: 'Inputs Screen',
        screen: const InputsScreen(),
        icon: Icons.format_align_center_outlined),
    MenuOption(
        route: 'slider',
        name: 'Slider Screen',
        screen: const SliderScreen(),
        icon: Icons.sledding_outlined),
    MenuOption(
        route: 'infinite',
        name: 'Infinite Screen',
        screen: const ListViewBuilderScreen(),
        icon: Icons.zoom_out_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {
      'home': (BuildContext context) => const HomeScreen(),
    };

    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
