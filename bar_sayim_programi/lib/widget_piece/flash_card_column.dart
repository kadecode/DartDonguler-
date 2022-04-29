import 'package:bar_sayim_programi/constants/const_ui.dart';
import 'package:flutter/material.dart';

class FlashCardWidget extends StatelessWidget {
  final Widget topChild;
  final Widget bottomChild;
  const FlashCardWidget({
    Key? key,
    required this.topChild,
    required this.bottomChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 3,
      ),
      height: MediaQuery.of(context).size.height / 6.5,
      width: MediaQuery.of(context).size.width - 34,
      child: Stack(
        alignment: Alignment.topLeft,
        fit: StackFit.loose,
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 8,
              width: MediaQuery.of(context).size.width - 40,
              child: Card(
                color: ConstUi.cardColor,
                elevation: 4,
                shadowColor: Colors.blue,
                child: bottomChild,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 7 - 3,
            width: MediaQuery.of(context).size.width / 4,
            child: Card(
              margin: const EdgeInsets.only(left: 1, top: 1),
              color: ConstUi.backgrounColor,
              elevation: 2,
              shadowColor: ConstUi.iconColor,
              child: topChild,
            ),
          )
        ],
      ),
    );
  }
}
