import 'package:flutter/material.dart';

import '../widget_piece/back_bottom.dart';
import '../widget_piece/bottom_bar.dart';

class ProfilePageWidget extends StatelessWidget {
  const ProfilePageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const BackBottomWidget(),
          const CircleAvatar(
            maxRadius: 60,
          ),
          const ButtomBarWidget(),
          /* const Text(
            'Profil Sayfası',
            style: TextStyle(fontSize: 20),
          ), */
          SizedBox(
            height: MediaQuery.of(context).size.height / 2 + 25,
            width: MediaQuery.of(context).size.width - 10,
            child: Card(
              shadowColor: Colors.blue.shade700,
              elevation: 4,
              color: Colors.blue.shade100,
            ),
          )
        ],
      ),
    );
  }
}
//Burasa scroll view  eklenencek diğer bilgilere bakmak ve sayfa daha kullanışlı olabilmesi için 
