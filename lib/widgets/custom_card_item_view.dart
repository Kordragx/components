import 'package:flutter/material.dart';
import 'package:components/styles/app_theme.dart';

class CustomCardItemView extends StatelessWidget {
  const CustomCardItemView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text('Hola'),
            horizontalTitleGap: 10,
            subtitle: Text(
                'Cupidatat qui sint sint eiusmod commodo tempor nisi minim laboris amet. Esse est ea dolor cupidatat dolore anim ad veniam anim cupidatat. Id ipsum culpa eu labore reprehenderit laborum pariatur duis. Lorem exercitation voluptate est qui ipsum. Ex veniam irure ea aliquip mollit deserunt magna id ipsum tempor. Laboris amet ut anim ut enim occaecat consequat ex enim anim ut dolore.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Cancel',
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Ok',
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
