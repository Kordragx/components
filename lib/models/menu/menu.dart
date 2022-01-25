import 'package:flutter/cupertino.dart';

class MenuOption {
  final String name;
  final String route;
  final Widget view;
  final IconData icon;

  MenuOption(
      {required this.name,
      required this.route,
      required this.view,
      required this.icon});
}
