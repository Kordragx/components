import 'package:components/models/menu/menu.dart';
import 'package:flutter/material.dart';

import 'package:components/views/views.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        name: 'ListItemView',
        route: 'listView',
        view: const ListItemsView(),
        icon: Icons.line_style_outlined),
    MenuOption(
        name: 'ListItemBuilderView',
        route: 'listViewBuilder',
        view: const ListItemBuilderView(),
        icon: Icons.view_list_sharp),
    MenuOption(
        name: 'alert',
        route: 'alert',
        view: const AlertScreenView(),
        icon: Icons.notification_important),
    MenuOption(
        name: 'Cards',
        route: 'card',
        view: const CardItemView(),
        icon: Icons.crop_landscape_outlined),
    MenuOption(
        name: 'User',
        route: 'user',
        view: const UserView(),
        icon: Icons.contact_page_rounded),
    MenuOption(
        name: 'Animated Container',
        route: 'animation',
        view: const AnimationView(),
        icon: Icons.animation_outlined)
  ];

  static Map<String, Widget Function(BuildContext)> getRoutesApp() {
    Map<String, Widget Function(BuildContext)> routes = {};
    routes.addAll({'home': (BuildContext context) => const HomeView()});
    for (final item in menuOptions) {
      routes.addAll({item.route: (BuildContext context) => item.view});
    }
    return routes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeView(),
  //   'listViewBuilder': (BuildContext context) => const ListItemBuilderView(),
  //   'listView': (BuildContext context) => const ListItemsView(),
  //   'alert': (BuildContext context) => const AlertScreenView()
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreenView());
  }
}
