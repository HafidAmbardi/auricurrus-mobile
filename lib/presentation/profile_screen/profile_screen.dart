import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/backend/login_controller/login_controller.dart';
import 'package:hafidomio_s_application2/backend/model/user.dart';
import 'package:hafidomio_s_application2/backend/providers/auth_provider.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/presentation/dashboard_page/dashboard_page.dart';
import 'package:hafidomio_s_application2/widgets/custom_bottom_app_bar.dart';
import 'package:hafidomio_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/appbar_title_button.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileScreen extends HookConsumerWidget {
  final dbUser? user;
  final String? id;
  final VoidCallback? onSignOut;

  ProfileScreen({Key? key, this.user, this.id, this.onSignOut})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //  Map<String, dynamic>? arguments =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;

    // user = arguments?['user'];
    // id = arguments?['id'];

    final authState = ref.watch(authStateProvider);
    final User? authenticatedUser = authState.value;

    String? userEmail = authenticatedUser?.email;
    String? userUID = authenticatedUser?.uid;

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.indigoA70001,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomAppBar(
              height: 127.v,
              title: Container(
                  height: 84.43.v,
                  width: 349.h,
                  margin: EdgeInsets.only(left: 26.h),
                  child: Stack(children: [
                    AppbarSubtitleOne(
                        text: "Good morning,",
                        margin: EdgeInsets.only(right: 214.h, bottom: 59.v)),
                    Container(
                        height: 79.v,
                        width: 349.h,
                        margin: EdgeInsets.only(top: 5.v),
                        child: Stack(alignment: Alignment.center, children: [
                          AppbarTitle(
                              text: user?.name ?? 'Default Name',
                              margin: EdgeInsets.only(
                                  top: 19.v, right: 192.h, bottom: 22.v)),
                          AppbarSubtitleFour(
                              text: "Level of hearing loss:",
                              margin: EdgeInsets.only(
                                  top: 57.v, right: 215.h, bottom: 3.v)),
                          AppbarTitleButton(
                              margin: EdgeInsets.only(
                                  left: 140.h, top: 53.v, right: 79.h)),
                          Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                  margin: EdgeInsets.only(
                                      left: 224.h, bottom: 48.v),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.h, vertical: 3.v),
                                  decoration: AppDecoration.outlineBlueGray
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL24),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: SvgPicture.asset(
                                            ImageConstant.imgGroup,
                                          ),
                                          margin: EdgeInsets.only(top: 3.v),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                right: 16.h, bottom: 2.v),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "uri",
                                                      style: CustomTextStyles
                                                          .titleMediumff3730d9),
                                                  TextSpan(
                                                      text: "currus",
                                                      style: CustomTextStyles
                                                          .titleMediumff3730d9)
                                                ]),
                                                textAlign: TextAlign.left))
                                      ])))
                        ]))
                  ])),
            ),
            Align(
              alignment: Alignment(0.0, 0.5),
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
                              style:
                                  CustomTextStyles.bodyLargePrimaryContainer_1,
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
                              style:
                                  CustomTextStyles.bodyLargePrimaryContainer_1,
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
                              style:
                                  CustomTextStyles.bodyLargePrimaryContainer_1,
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
                              style:
                                  CustomTextStyles.bodyLargePrimaryContainer_1,
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
                            decoration:
                                AppDecoration.outlinePrimaryContainer.copyWith(
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
                              style:
                                  CustomTextStyles.bodyLargePrimaryContainer_1,
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

                    // Sign Out button
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
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(bottom: 3.v),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                              ),
                              child: Text(
                                "Sign Out",
                                style: TextStyle(fontSize: 16.0),
                                // onLongPress: ref.read(loginControllerProvider.notifier).signOut(),
                              ),
                              onPressed: () {
                                ref
                                    .read(loginControllerProvider.notifier)
                                    .signOut();
                                onSignOut?.call();
                                debugPrint('called onsignout callback');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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
