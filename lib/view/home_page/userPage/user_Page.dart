import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/Value/app_color.dart';
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
        TabInfo(title: "Họ Tên", icon: Icons.person_outline),
        TabInfo(title: "Số Điện Thoại", icon: Icons.phone_outlined),
        TabInfo(title: "Ngày Sinh", icon: Icons.date_range_outlined),
        TabInfo(title: "Địa Chỉ", icon: Icons.location_city_outlined),
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
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            color: TColors.blue_400,
            padding: EdgeInsets.only(top: 96),
            margin: EdgeInsets.only(top: 96),
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
          Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(180)),
                  border: Border.all(width: 2, color: TColors.neutral_300),
                  color: Colors.black),
              height: 180,
              width: 180,
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(180)),
                  child: Image.asset(
                    "assets/images/Image_tam.png",
                    height: 180,
                    width: 180,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
