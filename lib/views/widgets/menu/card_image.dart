import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  const CardImage({super.key, required this.image, required this.onTap});
  final String image;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(child: Card(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Image.asset(image),
    ),
    onTap: () => onTap(),
    );
  }
}