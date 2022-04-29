import 'package:bar_sayim_programi/constants/const_ui.dart';
import 'package:flutter/material.dart';

class NewsCurrentCard extends StatelessWidget {
  const NewsCurrentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 9.5,
          width: MediaQuery.of(context).size.width / 3 - 10,
          child: const Card(
            color: ConstUi.cardColor,
            elevation: 3,
          ),
        ),
        /* Container(
          margin: const EdgeInsets.only(left: 2),
          padding: const EdgeInsets.only(left: 20),
          height: MediaQuery.of(context).size.height / 4 - 100,
          width: MediaQuery.of(context).size.width - 120,
          decoration: BoxDecoration(
              color: ConstUi.cardColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  width: 0.4, color: ConstUi.backgrounColor.withOpacity(0.5))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [Text('Buraya günlük işler akış')],
          ),
        ), */
      ],
    );
  }
}
/*  return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 4 - 100,
          width: MediaQuery.of(context).size.width / 3 - 65,
          child: const Card(
            color: ConstUi.cardColor,
            elevation: 4,
            shadowColor: Colors.blue,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 4 - 100,
          width: MediaQuery.of(context).size.width - 140,
        )
      ],
    ); */