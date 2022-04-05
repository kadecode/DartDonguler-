import 'package:bar_sayim_programi/widget_pages/mal_kabul_detay_widget.dart';
import 'package:bar_sayim_programi/widget_pages/mal_kabul_page_widget%20.dart';
import 'package:bar_sayim_programi/widget_piece/graphic_home.dart';
import 'package:flutter/material.dart';

import '../widget_piece/flash_card_column.dart';
import '../widget_piece/main_home_row.dart';
import 'sayim_girme_page_widget.dart';
import 'siparis_detay_page_widget.dart';

class MaimHomeWidget extends StatelessWidget {
  const MaimHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const GraghciCartWidget(),
        Row(
          children: [
            MainRowCardWidget(
              pageName: const MalKabulPageWidget(),
            ),
            MainRowCardWidget(
              pageName: const SayimGirmePageWidget(),
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FlashCardWidget(
                  direction: MalKabulDetayWigetPage(),
                  buttonText: 'Mal Kabul',
                ),
                FlashCardWidget(
                  direction: SayimGirmePageWidget(),
                  buttonText: 'Son Sayım',
                ),
                FlashCardWidget(
                  direction: SiparisDetayiPageWidget(),
                  buttonText: 'Son Siparis',
                ),
              ]),
        ),
      ],
    ));
  }
}

