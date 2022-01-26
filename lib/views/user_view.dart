import 'package:components/styles/app_theme.dart';
import 'package:flutter/material.dart';

class UserView extends StatelessWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Info'),
        actions: [
          Container(
            padding: const EdgeInsets.all(8),
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                'DN',
                style: TextStyle(color: AppTheme.primary),
              ),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://cdn4.iconfinder.com/data/icons/halloween-avatar-flat/64/halloween-25-512.png'),
        ),
      ),
    );
  }
}
