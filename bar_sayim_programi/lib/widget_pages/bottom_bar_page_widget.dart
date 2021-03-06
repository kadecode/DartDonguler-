import 'package:bar_sayim_programi/constants/const_ui.dart';
import 'package:bar_sayim_programi/widget_pages/main_home_widget.dart';
import 'package:flutter/material.dart';

import 'graphci_page_widget.dart';
import 'profile_page_widget.dart';
import 'search_page_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  late List<Widget> screans = [];
  late MaimHomeWidget mainHome;
  late GraphciPageWidget graphci;
  late SearchPageWidget search;
  late ProfilePageWidget profile;

  @override
  void initState() {
    super.initState();
    mainHome = const MaimHomeWidget();
    graphci = const GraphciPageWidget();
    search = const SearchPageWidget();
    profile = const ProfilePageWidget();
    screans = [mainHome, graphci, search, profile];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(1.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(22.0),
              child: bottomNavigationWidget()),
        ),
        body: screans[_index]);
  }

  BottomNavigationBar bottomNavigationWidget() {
    return BottomNavigationBar(
      backgroundColor: ConstUi.mainBlack,
      unselectedItemColor: ConstUi.darkGray,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 18,
      elevation: 4,
      showUnselectedLabels: false,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w300),
      selectedIconTheme:
          const IconThemeData(color: ConstUi.iconColor, size: 26),
      currentIndex: _index,
      onTap: (iconIndex) {
        setState(() {
          _index = iconIndex;
        });
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.calculate_outlined), label: 'Graphc'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
      ],
    );
  }
}
// Animasyon olay??n??n daha sonraki g??ncellemeler b??rak??yorum daha tahmin etti??im de h??zl?? biterse yapabilirim.