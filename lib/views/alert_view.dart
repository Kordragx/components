import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreenView extends StatelessWidget {
  const AlertScreenView({Key? key}) : super(key: key);

  void displayAlert(BuildContext buildContext) {
    showDialog(
        context: buildContext,
        barrierDismissible: true,
        builder: (buildContext) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Hi'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [Text('data')],
            ),
          );
        });
  }

  void displayAlertIOS(BuildContext buildContext) {
    showCupertinoDialog(
        barrierDismissible: true,
        context: buildContext,
        builder: (buildContext) {
          return const CupertinoAlertDialog(title: Text('Alerta iOS'));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => !Platform.isIOS
              ? displayAlert(context)
              : displayAlertIOS(context),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text('Tap!'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
