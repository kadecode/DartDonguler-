// Burada diğer sayfada gelen bilgileri son haline getirip gönderme ve kayıt işlemi yapılacak
// Gerekli düzenlemeler ve daha önceki siparişleri buradan takip edilir olacak
// Buranın üstüne arama butonu çıkarılarak sadece mal çetişlerin içinde arama yaparak farklı bir cart yapısı ile son sayım bilgisi
// beraber göstererek siparişe ekle iconu ile unutulan ürünü ///eklemek için yapılabilir arama delegetini farklı bir ////////////sayfaya çıkarılarak yapılabilir tek noktan yapılan arama //burada sart dahilinde tarama çıkarı ve kod olur.

import 'package:flutter/material.dart';

class SiparisDetayiPageWidget extends StatelessWidget {
  const SiparisDetayiPageWidget({Key? key}) : super(key: key);

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
