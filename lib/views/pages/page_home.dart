import 'package:cards/views/pages/page_solitaire.dart';
import 'package:cards/views/pages/page_spider.dart';
import 'package:cards/views/pages/page_tri_peaks.dart';
import 'package:cards/views/widgets/menu/card_image.dart';
import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The top bar shown at the top of the app
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),

      // The content of the page consists of a column of images that redirect to the game pages
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CardImage(
                  image: "assets/Solitaire-logo.png",
                  onTap: () =>
                      redirectTo((context) => const PageSolitaire(), context)),
              CardImage(
                  image: "assets/Tri-peaks-logo.png",
                  onTap: () =>
                      redirectTo((context) => const PageTriPeaks(), context)),
              CardImage(
                  image: "assets/Spider-logo.png",
                  onTap: () =>
                      redirectTo((context) => const PageSpider(), context)),
            ],
          ),
        ),
      ),
    );
  }

  /// Redirects to the page that is passed as a parameter.<br>
  /// @param builder The page to redirect to as a function of the context, `(context) => const PageSolitaire()` for example.<br>
  /// @param context The context of the current page.
  void redirectTo(Widget Function(BuildContext) builder, context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: builder),
    );
  }
}
