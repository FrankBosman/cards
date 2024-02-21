import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  const GameCard({super.key, required this.title, required this.image, required this.onTap});
  final String title;
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