import 'package:flutter/material.dart';

class ContainerAnimation extends StatefulWidget {
 const  ContainerAnimation({Key? key}) : super(key: key);

  @override
  State<ContainerAnimation> createState() => _ContainerAnimationState();
}

class _ContainerAnimationState extends State<ContainerAnimation> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red,);
  }
}