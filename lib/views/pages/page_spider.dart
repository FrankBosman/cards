import 'package:flutter/material.dart';

class PageSpider extends StatelessWidget {
  const PageSpider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Spider"),
      ),
      body: const Center(
        child: Text("Spider"),
      ),
    );
  }
}
