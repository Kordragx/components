import 'package:flutter/material.dart';

class ListItemsView extends StatelessWidget {
  final options = const ['Warrior', 'Priest', 'Warlock'];

  const ListItemsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hola'),
        ),
        body: ListView(
          children: [
            ...options.map((e) => ListTile(
                  title: Text(e),
                  trailing: const Icon(Icons.access_alarm_outlined),
                )),
          ],
        ));
  }
}
