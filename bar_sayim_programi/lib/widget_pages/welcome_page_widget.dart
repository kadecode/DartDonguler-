import 'package:bar_sayim_programi/widget_pages/user_login_widget.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Welcome Page',
                  style: TextStyle(fontSize: 40, color: Colors.black),
                ),
                FlutterLogo(
                  size: MediaQuery.of(context).size.height / 3 - 20,
                ),
                TextButton(
                  //Muhtemelen buraya animasyon yada bir logo koyacağım oda süre dolunca diğer tarafa geçer.
                  // Simdilik bu sayfalar arası gezinmek için

                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const UserLoginEnter()));
                  },
                  child: const Text(
                    'White Space',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                )
                /* (
                  'White Space',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ), */
              ]),
        ),
      )),
    );
  }
}
