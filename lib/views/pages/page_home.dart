import 'package:cards/views/pages/page_solidaire.dart';
import 'package:cards/views/pages/page_spider.dart';
import 'package:cards/views/pages/page_tri_peaks.dart';
import 'package:cards/views/widgets/menu/game_card.dart';
import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(child: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GameCard(title: "Solitaire", image: "assets/Solitaire-logo.png", onTap: () => redirectTo((context) => const PageSolitaire(), context)),
            GameCard(title: "Tri-peaks", image: "assets/Tri-peaks-logo.png", onTap: () => redirectTo((context) => const PageTriPeaks(), context)),
            GameCard(title: "Spider", image: "assets/Spider-logo.png", onTap: () => redirectTo((context) => const PageSpider(), context)),
          ],
        ),
      ),
      ),
    );
  }

  void redirectTo(Widget Function(BuildContext) builder, context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: builder),
    );
  }
}