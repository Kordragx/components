import 'package:flutter/material.dart';

import 'package:components/views/list_items_viewbuilder.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: ListItemBuilderView(),
    );
  }
}
