import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
// svg package
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomAppBarState createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgNavDashboard,
        activeIcon: ImageConstant.imgNavDashboard,
        title: "Dashboard",
        type: BottomBarEnum.Dashboard,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgNavProfile,
      activeIcon: ImageConstant.imgNavProfile,
      title: "Profile",
      type: BottomBarEnum.Profile,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: theme.colorScheme.primaryContainer,
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
                            color: theme.colorScheme.onErrorContainer
                                .withOpacity(1),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Text(
                              bottomMenuList[index].title ?? "",
                              style: theme.textTheme.labelLarge!.copyWith(
                                color: theme.colorScheme.onErrorContainer
                                    .withOpacity(1),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Opacity(
                            opacity: 0.75,
                            child: CustomImageView(
                              imagePath: bottomMenuList[index].icon,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              color: theme.colorScheme.onErrorContainer
                                  .withOpacity(1),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Text(
                              bottomMenuList[index].title ?? "",
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: theme.colorScheme.onErrorContainer
                                    .withOpacity(0.75),
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
  Dashboard,
  Profile,
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
      color: Colors.white,
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
