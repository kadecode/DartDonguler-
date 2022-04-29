import 'package:bar_sayim_programi/constants/const_ui.dart';
import 'package:bar_sayim_programi/widget_piece/title_text.dart';
import 'package:flutter/material.dart';

class ProfileMenuRowWidget extends StatelessWidget {
  const ProfileMenuRowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          height: 50,
          width: 50,
          child: Card(
            color: ConstUi.backgrounColor,
            elevation: 4,
          ),
        ),
        YaziTitleWidget(
            baslik: 'COST KONTROL',
            yaziSekli: ConstUi.titleFonts,
            sol: 0.0,
            ust: 6,
            alt: 2),
        const SizedBox(
          width: 90,
        ),
        const Icon(
          Icons.menu,
          size: 30,
          color: ConstUi.iconColor,
        )
      ],
    );
  }
}
