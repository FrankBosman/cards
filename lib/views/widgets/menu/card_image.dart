import 'package:flutter/material.dart';

/// This widget shows a clickable card which is made up of an image
/// the image is passed in as a string together with a function to call when the card is clicked.
class CardImage extends StatelessWidget {
  const CardImage({super.key, required this.image, required this.onTap});
  final String image;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    // Show a clickable card with the image, which is clipped to a card shape
    return GestureDetector(child: Card(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Image.asset(image),
    ),
    onTap: () => onTap(),
    );
  }
}