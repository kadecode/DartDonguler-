import 'package:flutter/material.dart';

class BackBottomWidget extends StatelessWidget {
  const BackBottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 16, 1, 1),
        child: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_outlined)),
      ),
    ]);
  }
}
// sonra gerekli görsel ayarlamaları ve alacağı değerler yazılacak.