// Burada bir sayfa yapmaya bilirim bir dialok çıkabilir 


import 'package:flutter/material.dart';

class UserPasswordPageWidget extends StatelessWidget {
  const UserPasswordPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sipariş Detay Sayfası')),
      body: Container(
        color: Colors.grey.shade100,
        child: const Center(child: Text('Siparis Sayfası')),
      ),
    );
  }
}
