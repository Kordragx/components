import 'package:flutter/material.dart';

class ListItemBuilderView extends StatelessWidget {
  final options = const ['Warrior', 'Priest', 'Warlock'];

  const ListItemBuilderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hola'),
        ),
        body: ListView(
          children: [],
        ));
  }
}
/* 
            ...options.map((e) => ListTile(
                  title: Text(e),
                  trailing: const Icon(Icons.access_alarm_outlined),
                )), */
