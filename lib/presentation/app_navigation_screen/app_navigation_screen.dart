import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.10. paired",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.pairedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.1.1. Dashboard - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dashboardContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.1.3. trip lis",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.tripLisScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.3. Name-filled",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.nameFilledScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.2.1 Gate",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.gateScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.1.2. Sound list",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.soundListScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "3.1.4 Lempuyangan",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.lempuyanganScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.7. Connect",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.connectScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "3.1.2. Loading drive",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loadingDriveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "3.1.3. Search",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "3.1.1. Drive",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.driveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "4.1.1. Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.9. Continue pair",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.continuePairScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.5. Bluetooth",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bluetoothScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.1.1. Onboarding One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.1.3. Onboarding Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "3.1.6. Navigation",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.navigationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.2. Name",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.nameScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.8. Connecting",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.connectingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "3.1.5. Location",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.locationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.1 personal",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.personalScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "3.1.13 End",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.endScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.2.3. Welcome signup",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.welcomeSignupScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.2. Name One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.nameOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.6. Searching",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.1.2. Onboarding Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.4. Level hear",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.levelHearScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
