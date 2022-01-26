import 'package:flutter/material.dart';

class CustomCardImageView extends StatelessWidget {
  const CustomCardImageView({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 8,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15), // Image border
            child: FadeInImage(
                height: 230,
                placeholder: const AssetImage('assets/jar-loading.gif'),
                image: NetworkImage(imgUrl),
                fit: BoxFit.cover),
          ),

          // ClipRect(
          //   child: SizedBox(
          //     child: FadeInImage(
          //         fit: BoxFit.cover,
          //         height: 230,
          //         fadeInDuration: Duration(milliseconds: 300),
          //         placeholder: AssetImage('assets/jar-loading.gif'),
          //         image: NetworkImage(
          //             'https://wallpaperaccess.com/full/5271880.jpg')),
          //   ),
          // )
        ],
      ),
    );
  }
}
