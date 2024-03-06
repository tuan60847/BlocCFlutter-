import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/Value/app_color.dart';
import 'package:untitled1/view/home_page/userPage/Component/Avatar.dart';
import 'package:untitled1/view/home_page/userPage/Component/TabViewInfo.dart';

class TabInfo {
  String title;
  IconData? icon;
  void Function()? onPressed;
  Color color;
  bool isVisibleValueView;

  TabInfo(
      {this.title = "",
      this.icon,
      this.onPressed,
      this.color = TColors.neutral_600,
      this.isVisibleValueView = true});
}

class OptionTabInfo {
  String title;
  List<TabInfo> listTab;

  OptionTabInfo({required this.listTab, this.title = ""});
}

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<OptionTabInfo> listOptionTabs = [
      OptionTabInfo(listTab: [
        TabInfo(
          title: "Họ Tên",
          icon: Icons.person_outline,
          onPressed: () {
            print("Họ Tên");
          },
        ),
        TabInfo(
          title: "Số Điện Thoại",
          icon: Icons.phone_outlined,
          onPressed: () {
            print("Số Điện Thoại");
          },
        ),
        TabInfo(
          title: "Ngày Sinh",
          icon: Icons.date_range_outlined,
          onPressed: () {
            print("Ngày Sinh");
          },
        ),
        TabInfo(
          title: "Địa Chỉ",
          icon: Icons.location_city_outlined,
          onPressed: () {
            print("Địa Chỉ");
          },
        ),
      ]),
      OptionTabInfo(listTab: [
        TabInfo(title: "Đổi mật khẩu", isVisibleValueView: false),
        TabInfo(title: "About", isVisibleValueView: false),
        TabInfo(
            title: "Thoát ứng dụng",
            isVisibleValueView: false,
            color: TColors.red_500)
      ]),
    ];
    return Container(
      color: Colors.brown,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(top: 128),
              margin: const EdgeInsets.only(top: 128),
              child: Column(
                children: listOptionTabs.map((e) {
                  return Container(
                      padding: EdgeInsets.only(bottom: 48),
                      child: Column(
                          children: e.listTab.map((tabInfo) {
                        return TabInfoView(tabInfo);
                      }).toList()));
                }).toList(),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 32),
              child: Center(
                child: Avatar(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
