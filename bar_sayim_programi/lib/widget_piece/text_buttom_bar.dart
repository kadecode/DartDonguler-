import 'package:flutter/material.dart';


class TextButtomBar extends StatelessWidget {
  const TextButtomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      
     /* style:
      buraya dokunulduğunda oluşan rengi yazılacak 
      ButtonStyle(
          shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ) ), */
      onPressed: (){}, child: const Text("Hafta",style: TextStyle(fontWeight: FontWeight.w500),)
    );
  }
} 