//Bura hep siparis vermek için hemde sayım için gelinecek 
//Sayım yaparken alert diyalok açılacak 
//Sipaeiş verirkende sepet açılacak oradak kartın yanında artıya bastıkca sepete ekleyecek 
// yanında alır diyolok çıkabilir 
//cart üzerinde iconlar ile haletmeye çalışacağım
//verilen siparişlere not da eklenebilecek bir yer koyulabilir belki sonrada olabilir ++(opsiyonlu)

import 'package:flutter/material.dart';

class SayimGirmePageWidget extends StatelessWidget {
  const SayimGirmePageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sayım Sayfası')),
      body: Container(
        color: Colors.grey.shade100,
        child: const Center(child: Text('Sayım  Sayfası')),
      ),
    );
  }
}