import 'package:flutter/material.dart';

class GraghciCartWidget extends StatelessWidget {
  const GraghciCartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //margin: const EdgeInsets.only(top: 80),
      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      //Sized Box ile değişebiliriz contanir sadece ölcülendirme kullanıyorum.
      height: MediaQuery.of(context).size.height / 2 - 100,
      width: MediaQuery.of(context).size.width - 40,
      child: Card(
          color: Colors.purple.shade200,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          shadowColor: Colors.blue.shade700,
          elevation: 10,
          child: const FlutterLogo()),
    );
  }
}
