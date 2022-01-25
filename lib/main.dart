import 'package:components/routes/app_routes.dart';
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
      theme: ThemeData.light().copyWith(
          primaryColor: Colors.indigo,
          appBarTheme: const AppBarTheme(color: Colors.purpleAccent)),
    );
  }

  MaterialPageRoute defaultRoute() {
    return MaterialPageRoute(builder: (context) => const AlertScreenView());
  }
}
