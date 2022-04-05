// Gelen malların geçmiş kayıtları açık olan gelecekleri tapik sayfası 
// Gelen yada gelecek olan malları farklı bir renkle beliremek gerek 
// Not olanları bir icon olarak not olduğu göstermek gerek


import 'package:flutter/material.dart';

class MalKabulDetayWigetPage extends StatelessWidget {
  const MalKabulDetayWigetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mal Kabul Sayfası')),
      body: Container(
        color: Colors.grey.shade100,
        child: const Center(child: Text('Mal Kabul Sayfası Detay')),
      ),
    );
  }
}
// Burada su soru ortaya çıkıyor ikinci bir sayfaya gerek varmı yoksa bu sayfa aynı olup farklı bir fonksiyonumu çağırsa