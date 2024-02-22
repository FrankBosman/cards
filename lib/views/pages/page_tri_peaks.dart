import 'package:flutter/material.dart';

class PageTriPeaks extends StatelessWidget {
  const PageTriPeaks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Tri-peaks"),
      ),
      body: const Center(
        child: Text("Tri-peaks"),
      ),
    );
  }
}
