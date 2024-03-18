import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomAppBarState createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgNavHome,
        activeIcon: ImageConstant.imgNavHome,
        title: "Home",
        type: BottomBarEnum.Home,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgNavMarket,
      activeIcon: ImageConstant.imgNavMarket,
      title: "Market",
      type: BottomBarEnum.Market,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavCardGray600,
      activeIcon: ImageConstant.imgNavCardGray600,
      title: "Card",
      type: BottomBarEnum.Card,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavWallet,
      activeIcon: ImageConstant.imgNavWallet,
      title: "Wallet",
      type: BottomBarEnum.Wallet,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: SizedBox(
        height: 24.v,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            bottomMenuList.length,
            (index) {
              return InkWell(
                onTap: () {
                  for (var element in bottomMenuList) {
                    element.isSelected = false;
                  }
                  bottomMenuList[index].isSelected = true;
                  widget.onChanged?.call(bottomMenuList[index].type);
                  setState(() {});
                },
                child: bottomMenuList[index].isSelected
                    ? Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: bottomMenuList[index].activeIcon,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            color: appTheme.gray600,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 7.v),
                            child: Text(
                              bottomMenuList[index].title ?? "",
                              style: CustomTextStyles.bodySmallGray600.copyWith(
                                color: appTheme.gray600,
                              ),
                            ),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: bottomMenuList[index].icon,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            color: appTheme.gray600,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 7.v),
                            child: Text(
                              bottomMenuList[index].title ?? "",
                              style: CustomTextStyles.bodySmallGray600.copyWith(
                                color: appTheme.gray600,
                              ),
                            ),
                          ),
                        ],
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Market,
  Card,
  Wallet,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
