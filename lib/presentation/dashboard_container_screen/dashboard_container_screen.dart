import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/presentation/dashboard_page/dashboard_page.dart';
import 'package:hafidomio_s_application2/presentation/lempuyangan_screen/lempuyangan_screen.dart';
import 'package:hafidomio_s_application2/presentation/loading_drive_screen/loading_drive_screen.dart';
import 'package:hafidomio_s_application2/presentation/location_screen/location_screen.dart';
import 'package:hafidomio_s_application2/presentation/search_screen/search_screen.dart';
import 'package:hafidomio_s_application2/widgets/custom_bottom_app_bar.dart';
import 'package:hafidomio_s_application2/widgets/custom_floating_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore_for_file: must_be_immutable
class DashboardContainerScreen extends StatelessWidget {
  DashboardContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          body: Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment(0.03, 0.25),
                      end: Alignment(0.97, 0.83),
                      colors: [
                    appTheme.indigoA70001,
                    theme.colorScheme.primary
                  ])),
              child: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.dashboardPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(routeSetting.name!),
                      transitionDuration: Duration(seconds: 0)))),
          bottomNavigationBar: _buildNavbarsFiverdActive(context),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked),
    );
  }

  /// Section Widget
  // Widget _buildNavbarsFiverdActive(BuildContext context) {
  //   return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
  //     Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
  //   });
  // }

  Widget _buildNavbarsFiverdActive(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomBottomAppBar(
            onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 45),
            child: CustomFloatingButton(
              height: 120,
              width: 120,
              child: SvgPicture.asset(
                ImageConstant.imgNav,
              ),
              onTap: () {
                Navigator.pushNamed(
                    navigatorKey.currentContext!, AppRoutes.locationScreen);
              },
            ),
          ),
        ],
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Dashboard:
        return AppRoutes.dashboardPage;
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardPage:
        return DashboardPage();
      case AppRoutes.locationScreen:
        return SearchScreen();
      default:
        return DefaultWidget();
    }
  }

  // onTapContinue(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.locationScreen);
  // }
}
