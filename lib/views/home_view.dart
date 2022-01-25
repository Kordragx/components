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
        backgroundColor: AppTheme.primary,
      ),
      body: Center(
        child: ListView.separated(
            itemBuilder: (ctx, i) => ListTile(
                  title: Text(menu[i].name),
                  leading: Icon(menu[i].icon, color: AppTheme.primary),
                  onTap: () => toPushNamed(context),
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.getRoutesApp().length),
      ),
    );
  }

  void toPushNamed(BuildContext context) {
    Navigator.pushNamed(context, 'alert3');
  }

  void nextView(BuildContext context) {
    final route =
        MaterialPageRoute(builder: (context) => const ListItemsView());
    Navigator.push(context, route);
  }
}
