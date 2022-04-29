import 'package:bar_sayim_programi/constants/const_ui.dart';
import 'package:flutter/material.dart';

class MainRowCardWidget extends StatelessWidget {
  final Widget pageName;
  final String cardTitle;
  const MainRowCardWidget(
      {Key? key, required this.pageName, required this.cardTitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => pageName));
      },
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 5,
            height: MediaQuery.of(context).size.height / 8 - 5,
            child: Card(
              color: ConstUi.cardColor,
              shadowColor: Colors.black,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: const Icon(
                Icons.calculate,
                size: 30,
              ),
            ),
          ),
          Text(
            cardTitle,
            style: ConstUi.titleSmal,
          ),
        ],
      ),
    );
  }
}
