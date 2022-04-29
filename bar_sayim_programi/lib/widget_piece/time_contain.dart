import 'package:bar_sayim_programi/constants/const_ui.dart';
import 'package:flutter/material.dart';

class TimeClanderWidget extends StatelessWidget {
  const TimeClanderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 14 - 10,
      width: MediaQuery.of(context).size.width / 2 - 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          clanderTwo(),
          clanderTwo(),
          clanderTwo(),
          clanderOne(),
          clanderTwo(),
          clanderTwo(),
          clanderTwo(),
        ],
      ),
    );
  }

  static Container clanderOne() {
    return Container(
      width: 24,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: ConstUi.backgrounColor.withOpacity(0.4),
          border: Border.all(
            color: ConstUi.iconColor.withOpacity(0.7),
            width: 0.4,
          )),
      child: Column(),
    );
  }

  static Container clanderTwo() {
    return Container(
      width: 18,
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: ConstUi.backgrounColor.withOpacity(0.6),
          border: Border.all(
            color: ConstUi.iconColor.withOpacity(0.9),
            width: 0.4,
          )),
      child: Column(),
    );
  }
}
