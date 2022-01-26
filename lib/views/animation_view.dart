import 'dart:math';

import 'package:components/styles/app_theme.dart';
import 'package:flutter/material.dart';

class AnimationView extends StatefulWidget {
  const AnimationView({Key? key}) : super(key: key);

  @override
  State<AnimationView> createState() => _AnimationViewState();
}

class _AnimationViewState extends State<AnimationView> {
  double mHeight = 100;
  double mWidth = 100;
  Color mColor = AppTheme.primary;
  BorderRadiusGeometry mBorderRadius = BorderRadius.circular(8);

  void morph() {
    final random = Random();
    mHeight = random.nextInt(300).toDouble() + 70;
    mWidth = random.nextInt(300).toDouble() + 70;
    mColor = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    mBorderRadius = BorderRadius.circular(random.nextInt(100).toDouble() + 10);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated container'),
      ),
      body: Center(
        child: AnimatedContainer(
          curve: Curves.fastOutSlowIn,
          duration: const Duration(milliseconds: 255),
          height: mHeight,
          width: mWidth,
          decoration: BoxDecoration(borderRadius: mBorderRadius, color: mColor),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.play_circle_rounded,
          size: 35,
        ),
        onPressed: () => morph(),
      ),
    );
  }
}
