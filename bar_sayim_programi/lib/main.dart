import 'package:flutter/material.dart';

import 'constants/const_ui.dart';
import 'widget_pages/welcome_page_widget.dart';

void main() => runApp(const BarCost());

class BarCost extends StatelessWidget {
  const BarCost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: ConstUi.scaffolColor,
      theme: ThemeData(
        backgroundColor: ConstUi.scaffolColor,
        shadowColor: Colors.blue,
      ),
      title: 'Tip Box',
      home: const WelcomePage(),
    );
  }
}
