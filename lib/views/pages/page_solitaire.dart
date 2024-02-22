import 'package:flutter/material.dart';

class PageSolitaire extends StatelessWidget {
  const PageSolitaire({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Solitaire"),
      ),
      body: const Center(
        child: Text("Solitaire"),
      ),
    );
  }
}
