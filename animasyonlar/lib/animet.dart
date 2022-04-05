import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';

class AnimasyonPage extends StatefulWidget {
  const AnimasyonPage({Key? key}) : super(key: key);

  @override
  State<AnimasyonPage> createState() => _AnimasyonPageState();
}

class _AnimasyonPageState extends State<AnimasyonPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late SequenceAnimation sequenceAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this);
    sequenceAnimation = SequenceAnimationBuilder()
        .addAnimatable(
            animatable: Tween<double>(begin: 0, end: 1),
            from: const Duration(milliseconds: 0),
            to: const Duration(milliseconds: 400),
            tag: 'momo')
        .addAnimatable(
            animatable: Tween<double>(begin: 50, end: 150),
            from: const Duration(milliseconds: 400),
            to: const Duration(milliseconds: 800),
            tag: 'comes')
        .addAnimatable(
            animatable: Tween(begin: 50, end: 150),
            from: const Duration(milliseconds: 400),
            to: const Duration(milliseconds: 800),
            tag: 'duru')
        .addAnimatable(
            animatable: BorderRadiusTween(
                begin: BorderRadius.circular(0),
                end: BorderRadius.circular(75)),
            from: const Duration(microseconds: 800),
            to: const Duration(microseconds: 1200),
            tag: 'circular')
        .animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animasyon Sayfası')),
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          builder: (BuildContext context, Widget? child) {
            return Opacity(
              opacity: sequenceAnimation['momo'].value,
              child: Container(
                width: sequenceAnimation['comes'].value,
                height: sequenceAnimation['duru'].value,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  border: Border.all(width: 3),
                  borderRadius: sequenceAnimation['circular'].value,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
