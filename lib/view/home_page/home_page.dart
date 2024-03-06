import 'package:flutter/material.dart';
import 'package:untitled1/view/counter_page/counter_page.dart';
import 'package:untitled1/view/home_page/component/BottomAppBar.dart';
import 'package:untitled1/view/home_page/userPage/namePage/page.dart';
import 'package:untitled1/view/home_page/userPage/user_Page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectIndex = 0;

  final List<ItemAppBar> listTestItems = [
    ItemAppBar(
      title: "Favorite",
      icon: Icons.favorite,
    ),
    ItemAppBar(
      title: "Message",
      icon: Icons.message,
    ),
    ItemAppBar(
      title: "User",
      icon: Icons.person,
    ),
    ItemAppBar(
      title: "Setting",
      icon: Icons.settings,
    ),
  ];

  List<String?> listItemsTab = ["Favorite", null, "User", null];

  void selectView(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UserNamePage(),
      appBar: (listItemsTab[selectIndex] == null)
          ? null
          : AppBar(
              title: Text(listTestItems[selectIndex].title),
            ),
      bottomNavigationBar: BottomAppBarCustom(
          onPressed: selectView,
          currentIndex: selectIndex, // Giả sử currentIndex của bạn là 0
          listItems: listTestItems),
    );
  }
}
