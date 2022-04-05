import 'package:flutter/material.dart';

class ButtomBarWidget extends StatelessWidget {
  const ButtomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      ButtonBar(
        children: [
          TextButton(onPressed: () {}, child: const Text('Button 1')),
          TextButton(onPressed: () {}, child: const Text('Button 2')),
          TextButton(onPressed: () {}, child: const Text('Button 3')),
          TextButton(onPressed: () {}, child: const Text('Button 3'))
        ],
      ),
    ]);
  }
}
// Buradaki buttonlar text de olabilir.