import 'package:flutter/material.dart';

class TextFieldEmail extends StatelessWidget {
  final String labelText;
  final String hintText;
  final Icon icon;

  const TextFieldEmail({
    Key? key,
    required this.labelText,
    required this.hintText, required this.icon,
  }) : super(key: key);

  // Bu sayfa için araştırılması gerekenler
  // -1 Controller konusunu
  // -2 Dekarasyon ve diğer ayarları tamamlama

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          prefixIcon: icon,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          labelText: labelText,
          hintText: hintText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.orange, width: 2)),
        ));
  }
}
// bura ile yarım uyarısı ve yanlış yazıldığın renk değiştirme işini sonra ayarlamaya bırakıyorum
// Giger görsel ayarları yapılacak
