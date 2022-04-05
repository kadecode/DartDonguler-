import 'package:flutter/material.dart';

class FlashCardWidget extends StatelessWidget {
  final String buttonText;
  final Widget direction;
  //final Widget cheld; - Daha sonra kartı kişileştirmek için
  const FlashCardWidget(
      {Key? key, required this.buttonText, required this.direction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3 - 135,
      width: MediaQuery.of(context).size.width - 10,
      child: (Card(
        color: Colors.green.shade200,
        shadowColor: Colors.blue.shade700,
        elevation: 10,
        child: TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => direction));
            },
            child: Text(buttonText)),
      )),
    );
  }
}
