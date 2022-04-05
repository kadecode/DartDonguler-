import 'package:animasyonlar/animet.dart';
import 'package:animasyonlar/container_animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  //Animation
  //Ticker
  // AnimationController
  // Tween --> between (başlama ve  bitiş) curve (doğrusal olma efekler kullanmaya yarıyor)

  int _counter = 0;
  late AnimationController controller;
  //late Animation animation;
  late Animation animation2;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    controller.addListener(() {
      setState(() {
        //debugPrint(controller.value.toString());
      });
    });
    animation2 = CurvedAnimation(parent: controller, curve: Curves.easeOutExpo);
    /* animation =
        ColorTween(begin: Colors.purple, end: Colors.red).animate(controller); */
    controller.forward();
    controller.addStatusListener((status) {
      status == AnimationStatus.completed
          ? controller.reverse().orCancel
          : status == AnimationStatus.dismissed
              ? controller.forward().orCancel
              : Null;
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: animation.value,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.heart_broken,
                size: animation2.value * 30 +40, color: Colors.red),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: controller.value + 20),
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AnimasyonPage()));
                },
                child: const Text('Sayfaya Geç')),
                TextButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder:(context)=> ContainerAnimation()));
                }, 
                child:const  Text('Container Page')),
               ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
