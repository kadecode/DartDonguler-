import 'package:bar_sayim_programi/constants/const_ui.dart';
import 'package:bar_sayim_programi/widget_pages/gelen_sayim_page.dart';
import 'package:bar_sayim_programi/widget_piece/graphic_home.dart';
import 'package:bar_sayim_programi/widget_piece/profile_menu_row.dart';
import 'package:bar_sayim_programi/widget_piece/time_contain.dart';
import 'package:bar_sayim_programi/widget_piece/title_text.dart';
import 'package:flutter/material.dart';

import '../widget_piece/day_works.dart';
import '../widget_piece/flash_card_column.dart';
import '../widget_piece/acion_main.dart';
import 'sayim_girme_page_widget.dart';

class MaimHomeWidget extends StatelessWidget {
  const MaimHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ConstUi.scaffolColor,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 22, left: 10, right: 10),
              child: ProfileMenuRowWidget(),
            ),
            const Center(child: TimeClanderWidget()),
            const GraghciCartWidget(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                YaziTitleWidget(
                    baslik: 'EYLEMLER',
                    yaziSekli: ConstUi.titleSmal,
                    sol: 12,
                    ust: 10,
                    alt: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    MainRowCardWidget(
                      pageName: MalKabulPageWidget(),
                      cardTitle: 'Giriş',
                    ),
                    MainRowCardWidget(
                      pageName: SayimGirmePageWidget(),
                      cardTitle: 'Sayım',
                    ),
                    MainRowCardWidget(
                      pageName: SayimGirmePageWidget(),
                      cardTitle: 'Siparis',
                    ),
                    MainRowCardWidget(
                      pageName: SayimGirmePageWidget(),
                      cardTitle: 'Pona',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                YaziTitleWidget(
                  baslik: 'Günlük İş Akışı',
                  yaziSekli: ConstUi.titleSmal,
                  alt: 2,
                  ust: 8,
                  sol: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 16, bottom: 30),
                  child: SingleChildScrollView(
                    child: Row(
                      children: const [
                        NewsCurrentCard(),
                        NewsCurrentCard(),
                        NewsCurrentCard(),
                      ],
                    ),
                  ),
                ),
                const Center(
                  child: SingleChildScrollView(
                    child: FlashCardWidget(
                      bottomChild: Icon(Icons.card_giftcard),
                      topChild: Icon(Icons.door_back_door),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
