import 'package:bar_sayim_programi/widget_pages/user_login_widget.dart';
import 'package:bar_sayim_programi/widget_piece/text_field_widget.dart';
import 'package:flutter/material.dart';

class UserSingUpPage extends StatelessWidget {
  const UserSingUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'User Sing Up ',
              style:TextStyle(fontSize: 45),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFieldEmail(
                    hintText: 'Name',
                    labelText: 'Name',
                    icon: Icon(Icons.person),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFieldEmail(
                    hintText: 'Email@gmail.com',
                    labelText: 'Email',
                    icon: Icon(
                      Icons.email_outlined,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFieldEmail(
                    hintText: 'Password',
                    labelText: 'Password ',
                    icon: Icon(Icons.key),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFieldEmail(
                    hintText: 'Agen Password',
                    labelText: 'Password Agen',
                    icon: Icon(
                      Icons.lock,
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const UserLoginEnter()));
                },
                child: const Text('Sayfa Gec')),
          ],
        ),
      ),
    );
  }
}
//En son sayfa düzeni ve ayarlamaları üzerinde geçilecek.