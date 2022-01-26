import 'package:components/routes/app_routes.dart';
import 'package:components/styles/app_theme.dart';
import 'package:components/views/list_items_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menu = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Components')),
      ),
      body: Center(
        child: ListView.separated(
            itemBuilder: (ctx, i) => ListTile(
                  title: Text(menu[i].name),
                  leading: Icon(menu[i].icon, color: AppTheme.primary),
                  onTap: () => toPushNamed(context, menu[i].route),
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menu.length),
      ),
    );
  }

  void toPushNamed(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }

  void nextView(BuildContext context) {
    final route =
        MaterialPageRoute(builder: (context) => const ListItemsView());
    Navigator.push(context, route);
  }
}
