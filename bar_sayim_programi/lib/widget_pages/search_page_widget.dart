import 'package:flutter/material.dart';

class SearchPageWidget extends StatelessWidget {
  const SearchPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black45,
        backgroundColor: Colors.blue.shade100,
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: MyDelegate());
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: Column(
        children: const [
          Center(
            child: Text(
              'Arama Sayfası',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}

class MyDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () => close(context, null), icon: const Icon(Icons.close)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
      onPressed: () {
        query.isEmpty ? close(context, null) : query = '';
      },
      icon: const Icon(Icons.clear),
    );
  }

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView();
  }
}
//Burayı daha sonra kotların olduğu yere taşıyıp sorgu yapılacak.
//Çalışan kodlar ve görseli sonradan değişecek 