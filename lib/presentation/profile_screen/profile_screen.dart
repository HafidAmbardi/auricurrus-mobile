import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/presentation/dashboard_page/dashboard_page.dart';
import 'package:hafidomio_s_application2/widgets/custom_bottom_app_bar.dart';
import 'package:hafidomio_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 1.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 26.h,
                    vertical: 20.v,
                  ),
                  decoration: AppDecoration.linear,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Josephine",
                        style: theme.textTheme.headlineMedium,
                      ),
                      SizedBox(height: 29.v),
                      Text(
                        "josephine@gmail.com",
                        style: CustomTextStyles.bodyMediumOnErrorContainer_1,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 25.h,
                          vertical: 14.v,
                        ),
                        decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                ImageConstant.imgLinkedin,
                                height: 22.v,
                                width: 18.h,
                              ),
                              margin: EdgeInsets.only(
                                left: 4.h,
                                top: 12.v,
                                bottom: 11.v,
                              ),
                            ),
                            Spacer(
                              flex: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 12.v,
                                bottom: 10.v,
                              ),
                              child: Text(
                                "Trip list",
                                style: CustomTextStyles
                                    .bodyLargePrimaryContainer_1,
                              ),
                            ),
                            Spacer(
                              flex: 79,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 3.v),
                              child: CustomIconButton(
                                height: 42.adaptSize,
                                width: 42.adaptSize,
                                padding: EdgeInsets.all(10.h),
                                decoration: IconButtonStyleHelper.fillIndigoA,
                                child: SvgPicture.asset(
                                  ImageConstant.imgArrowRight,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 25.h,
                          vertical: 14.v,
                        ),
                        decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                ImageConstant.imgBel,
                                height: 21.v,
                                width: 22.h,
                              ),
                              margin: EdgeInsets.only(
                                left: 4.h,
                                top: 12.v,
                                bottom: 11.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 28.h,
                                top: 10.v,
                                bottom: 11.v,
                              ),
                              child: Text(
                                "Sound list",
                                style: CustomTextStyles
                                    .bodyLargePrimaryContainer_1,
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(bottom: 3.v),
                              child: CustomIconButton(
                                height: 42.adaptSize,
                                width: 42.adaptSize,
                                padding: EdgeInsets.all(10.h),
                                decoration: IconButtonStyleHelper.fillIndigoA,
                                child: SvgPicture.asset(
                                  ImageConstant.imgArrowRight,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 25.h,
                          vertical: 14.v,
                        ),
                        decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                ImageConstant.imgLockPrimarycontainer,
                                height: 22.adaptSize,
                                width: 22.adaptSize,
                              ),
                              margin: EdgeInsets.only(
                                top: 12.v,
                                bottom: 11.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 28.h,
                                top: 12.v,
                                bottom: 10.v,
                              ),
                              child: Text(
                                "Change email address",
                                style: CustomTextStyles
                                    .bodyLargePrimaryContainer_1,
                              ),
                            ),
                            Container(
                              height: 42.adaptSize,
                              width: 42.adaptSize,
                              margin: EdgeInsets.only(
                                left: 8.h,
                                bottom: 3.v,
                              ),
                              padding: EdgeInsets.all(10.h),
                              decoration: AppDecoration.fillIndigoA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8,
                              ),
                              child: SvgPicture.asset(
                                ImageConstant.imgArrowRight,
                                height: 22.adaptSize,
                                width: 22.adaptSize,
                                alignment: Alignment.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 25.h,
                          vertical: 14.v,
                        ),
                        decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                ImageConstant.imgSearch,
                                height: 22.adaptSize,
                                width: 22.adaptSize,
                              ),
                              margin: EdgeInsets.only(
                                left: 4.h,
                                top: 12.v,
                                bottom: 11.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 28.h,
                                top: 12.v,
                                bottom: 10.v,
                              ),
                              child: Text(
                                "Setting",
                                style: CustomTextStyles
                                    .bodyLargePrimaryContainer_1,
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: 42.adaptSize,
                              width: 42.adaptSize,
                              margin: EdgeInsets.only(bottom: 3.v),
                              padding: EdgeInsets.all(10.h),
                              decoration: AppDecoration.fillIndigoA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8,
                              ),
                              child: SvgPicture.asset(
                                ImageConstant.imgArrowRight,
                                height: 22.adaptSize,
                                width: 22.adaptSize,
                                alignment: Alignment.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 25.h,
                          vertical: 14.v,
                        ),
                        decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 22.adaptSize,
                              margin: EdgeInsets.only(
                                left: 4.h,
                                top: 12.v,
                                bottom: 11.v,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration.outlinePrimaryContainer
                                  .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder13,
                              ),
                              child: Text(
                                "i",
                                style:
                                    CustomTextStyles.titleSmallPrimaryContainer,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 28.h,
                                top: 11.v,
                                bottom: 11.v,
                              ),
                              child: Text(
                                "About Us",
                                style: CustomTextStyles
                                    .bodyLargePrimaryContainer_1,
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(bottom: 3.v),
                              child: CustomIconButton(
                                height: 42.adaptSize,
                                width: 42.adaptSize,
                                padding: EdgeInsets.all(10.h),
                                decoration: IconButtonStyleHelper.fillIndigoA,
                                child: SvgPicture.asset(
                                  ImageConstant.imgArrowRight,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 250.h,
                    top: 26.v,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 13.h,
                    vertical: 3.v,
                  ),
                  decoration: AppDecoration.outlineBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder13,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: SvgPicture.asset(
                          ImageConstant.imgShape,
                          height: 4.v,
                          width: 7.h,
                        ),
                        margin: EdgeInsets.only(
                          top: 11.v,
                          bottom: 7.v,
                        ),
                      ),
                      Container(
                        height: 13.v,
                        width: 9.h,
                        margin: EdgeInsets.only(
                          top: 4.v,
                          bottom: 6.v,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset(
                              ImageConstant.imgShape,
                              height: 9.v,
                              width: 3.h,
                              alignment: Alignment.bottomCenter,
                            ),
                            SvgPicture.asset(
                              ImageConstant.imgSettingsIndigoA700,
                              height: 13.v,
                              width: 9.h,
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 1.h,
                          bottom: 2.v,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "uri",
                                style: CustomTextStyles.titleMediumff3730d9,
                              ),
                              TextSpan(
                                text: "currus",
                                style: CustomTextStyles.titleMediumff3730d9,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomAppBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Dashboard:
        return AppRoutes.dashboardPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profileScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardPage:
        return DashboardPage();
      default:
        return DefaultWidget();
    }
  }
}
