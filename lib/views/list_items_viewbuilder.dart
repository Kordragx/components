import 'package:flutter/material.dart';

class ListItemBuilderView extends StatelessWidget {
  final options = const ['Warrior', 'Priest', 'Warlock'];

  const ListItemBuilderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text('Hola'),
        ),
        body: ListView.separated(
            itemBuilder: (ctx, i) => ListTile(
                  title: Text(options[i]),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  onTap: () {
                    print(options[i]);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
/* 
            ...options.map((e) => ListTile(
                  title: Text(e),
                  trailing: const Icon(Icons.access_alarm_outlined),
                )), */
