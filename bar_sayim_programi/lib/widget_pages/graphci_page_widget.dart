import 'package:flutter/material.dart';

import '../widget_piece/bottom_bar.dart';
import '../widget_piece/graphic_home.dart';

class GraphciPageWidget extends StatelessWidget {
  const GraphciPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const GraghciCartWidget(),
          const ButtomBarWidget(),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2 - 50,
            width: MediaQuery.of(context).size.width - 10,
            child: Card(
              color: Colors.blue.shade50,
              elevation: 5,
              shadowColor: Colors.amber,
            ),
          )
        ],
      ),
    );
  }
}
//Burada ana sayfadaki grafik tasarımın kullanmak simdilik küçük gösteriyor onun ölçülerini dıkardan alacak şekilde
//burada kullanıla bilir. İkinci olarakta burada farklı bir tasarıma gidilebilir.