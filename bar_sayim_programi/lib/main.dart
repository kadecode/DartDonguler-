

import 'package:flutter/material.dart';

import 'widget_pages/welcome_page_widget.dart';

void main() => runApp(const BarCost());

class BarCost extends StatelessWidget {
  const BarCost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home:WelcomePage(),
    );
  }
}