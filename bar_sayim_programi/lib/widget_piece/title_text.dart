import 'package:flutter/material.dart';

class YaziTitleWidget extends StatelessWidget {
  final String baslik;
  final TextStyle yaziSekli;
  final double sol;
  final double ust;
  final double alt;

  const YaziTitleWidget(
      {Key? key,
      required this.baslik,
      required this.yaziSekli,
      required this.sol,
      required this.ust,
      required this.alt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
       left: sol, bottom: alt, top: ust),
      child: Text(
        baslik,
        style: yaziSekli,
      ),
    );
  }
}
