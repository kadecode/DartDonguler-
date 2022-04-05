import 'package:flutter/material.dart';
import '../widget_pages/user_singup_widget.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const UserSingUpPage()));
            },
            child: const Text('Yeni Kayıt')),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.gif_box),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.gif_box),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.gif_box),
          ],
        ),
      ],
    );
  }
}
//Buradaki iconlar icon button olarak değişecek 
//ontap konumtları ve giriş işlemleri iş codları içinde bura gelecek