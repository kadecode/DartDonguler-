import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConstUi {
  ConstUi._();
  static const iconColor = Color(0xff139AD4);
  static const backgrounColor = Color(0xffBECACF);
  static const scaffolColor = Color(0xffE7F4F5);
  static const cardColor = Color(0xffF1F5F8);
  static const mainBlack = Color(0xff1A1F25);
  static const darkGray = Color.fromARGB(255, 73, 83, 87);
  static const titlePadding =
      Padding(padding: EdgeInsets.only(left: 12, top: 4, bottom: 4));
  static final titleFonts = GoogleFonts.yesevaOne(
      fontWeight: FontWeight.w100, fontSize: 20, color: mainBlack);
  static final titleSmal = GoogleFonts.yesevaOne(
      fontWeight: FontWeight.w100, fontSize: 15, color: mainBlack);
  static final explanText = GoogleFonts.unna(
      fontWeight: FontWeight.w100, fontSize: 16, color: mainBlack);
}
