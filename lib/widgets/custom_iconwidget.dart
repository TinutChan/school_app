import 'package:flutter/material.dart';

class CustomIconWidget extends StatelessWidget {
  const CustomIconWidget(
      {super.key,
      required this.images,
      required this.text,
      required this.onPress});

  final String images;
  final String text;
  final GestureTapCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 8.0),
            width: 50,
            height: 50,
            child: ClipRRect(
              child: Image(
                image: AssetImage(images),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(text),
        ],
      ),
    );
  }
}
