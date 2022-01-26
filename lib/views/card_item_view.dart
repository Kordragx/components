import 'package:flutter/material.dart';
import 'package:components/widgets/widgets.dart';

class CardItemView extends StatelessWidget {
  const CardItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [
          CustomCardItemView(),
          SizedBox(
            height: 8,
          ),
          CustomCardImageView(
              imgUrl: 'https://wallpaperaccess.com/full/5271880.jpg'),
          SizedBox(
            height: 8,
          ),
          CustomCardImageView(
              imgUrl: 'https://cdn.wallpapersafari.com/41/65/6Diyon.jpg')
        ],
      ),
    );
  }
}
