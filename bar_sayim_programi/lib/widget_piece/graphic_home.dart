import 'package:bar_sayim_programi/constants/const_ui.dart';
import 'package:flutter/material.dart';

class GraghciCartWidget extends StatelessWidget {
  const GraghciCartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //margin: const EdgeInsets.only(top: 80),
      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      //Sized Box ile değişebiliriz contanir sadece ölcülendirme kullanıyorum.
      height: MediaQuery.of(context).size.height / 4.6,
      width: MediaQuery.of(context).size.width - 60,
      child: Card(
          color: ConstUi.backgrounColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Expanded(child: FlutterLogo(size: 80)),
            ],
          )),
    );
  }
}
