import 'package:components/routes/app_routes.dart';
import 'package:components/styles/app_theme.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: AppRoutes.initialRoute,
        onGenerateRoute: AppRoutes.onGenerateRoute,
        routes: AppRoutes.getRoutesApp(),
        theme: AppTheme.appThemeData);
  }

  MaterialPageRoute defaultRoute() {
    return MaterialPageRoute(builder: (context) => const AlertScreenView());
  }
}
