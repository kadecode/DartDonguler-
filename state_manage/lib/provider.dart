import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final titlePrivoder = Provider<String>((ref) => 'Momo ne kadar tatlı');
final textProvider = Provider<String>(((ref) => 'Karşılama Yazısı Burası'));

class ProviderPage extends StatelessWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: Consumer(builder: (context, ref, child) {
          var title = ref.watch(titlePrivoder);
          return Text(title);
        })),
        body: Center(
          child: Container(
            
            color: Colors.deepOrangeAccent,
            child:const  TextKarsilama(),
          ),
        ),
      ),
    );
  }

 
}
 class TextKarsilama extends ConsumerWidget {
    const TextKarsilama({Key? key}) : super(key: key);
  
    @override
    Widget build(BuildContext context, WidgetRef ref) {
     var karsileme = ref.watch(textProvider);
      return Text (karsileme);
      
    }
  }