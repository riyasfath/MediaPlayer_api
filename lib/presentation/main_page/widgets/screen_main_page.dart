import 'package:flutter/material.dart';
import 'package:media_player/core/colors/colors.dart';
import 'package:media_player/presentation/downloads/screen_downloads.dart';
import 'package:media_player/presentation/fast%20laugh/screen_fast_laugh.dart';
import 'package:media_player/presentation/home/screen_home.dart';
import 'package:media_player/presentation/main_page/bottom_nav.dart';
import 'package:media_player/presentation/new%20&%20hot/screen_new_and_hot.dart';
import 'package:media_player/presentation/search/search_screen.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _pages = const [
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: BottomBavigationWidget(),
    );
  }
}
