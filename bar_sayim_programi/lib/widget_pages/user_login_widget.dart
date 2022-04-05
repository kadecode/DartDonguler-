import 'package:bar_sayim_programi/widget_pages/bottom_bar_page_widget.dart';
import 'package:bar_sayim_programi/widget_piece/social_media_row.dart';
import 'package:bar_sayim_programi/widget_piece/text_field_widget.dart';
import 'package:flutter/material.dart';

class UserLoginEnter extends StatelessWidget {
  const UserLoginEnter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 4 - 50,
                ),
                const Text(
                  'User Login',
                  style: TextStyle(fontSize: 40, color: Colors.black),
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const TextFieldEmail(
                      hintText: 'Email@gmail.com',
                      labelText: 'Email',
                      icon: Icon(Icons.password),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const TextFieldEmail(
                      hintText: 'Password',
                      labelText: 'Password',
                      icon: Icon(Icons.email_outlined),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HomePage()));
                        },
                        child: const Text('Sayfa Gec')),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Sifreni Unuttun mu ?'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 4 - 50,
                    ),
                  ],
                ),
                const SocialMediaRow(),
              ]),
        ),
      ),
    );
  }
}
