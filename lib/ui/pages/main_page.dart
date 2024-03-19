import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studycafe/ui/pages/home_page/home_page.dart';
import 'package:studycafe/ui/pages/like_list_page/like_list_page.dart';
import 'package:studycafe/ui/pages/my_page/my_page.dart';

import '../../core/color.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedPage = 1;
  void _onNavigateToPage(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedPage,
        children: [
          LikeListPage(),
          HomePage(),
          MyPage(
            onNavigateToPage: _onNavigateToPage,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPage,
        selectedItemColor: Colors.black,
        unselectedItemColor: k9DColor,
        onTap: (index) {
          setState(() {
            _selectedPage = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
              label: "찜", icon: Icon(CupertinoIcons.heart)),
          const BottomNavigationBarItem(
              label: "홈", icon: Icon(CupertinoIcons.home)),
          const BottomNavigationBarItem(
              label: "마이페이지", icon: Icon(CupertinoIcons.person)),
        ],
        unselectedLabelStyle: TextStyle(fontSize: 10),
        selectedLabelStyle: TextStyle(fontSize: 10),
      ),
    );
  }
}
