import 'package:flutter/material.dart';

class MainRowCardWidget extends StatelessWidget {
  final Widget pageName;
  MainRowCardWidget({Key? key, required this.pageName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => pageName));
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2 - 120,
        height: MediaQuery.of(context).size.height / 2 - 200,
        child: Card(
          shadowColor: Colors.blue.shade700,
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Mal Giriş Sayımı'),
              Text('Tarih 12/06/20  12:34'),
              Text('Girilen Miktar')
              //Burada girdiler farklı oldugunda dolayı değişkenleri yükardan alma yöntemini izlenecek.
            ],
          ),
        ),
      ),
    );
  }
}
