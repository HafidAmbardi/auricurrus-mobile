import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/backend/model/user.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/presentation/dashboard_page/dashboard_page.dart';
import 'package:hafidomio_s_application2/presentation/lempuyangan_screen/lempuyangan_screen.dart';
import 'package:hafidomio_s_application2/presentation/loading_drive_screen/loading_drive_screen.dart';
import 'package:hafidomio_s_application2/presentation/location_screen/location_screen.dart';
import 'package:hafidomio_s_application2/presentation/profile_screen/profile_screen.dart';
import 'package:hafidomio_s_application2/presentation/search_screen/search_screen.dart';
import 'package:hafidomio_s_application2/widgets/custom_bottom_app_bar.dart';
import 'package:hafidomio_s_application2/widgets/custom_floating_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hafidomio_s_application2/widgets/custom_search_view.dart';
// import permissions
import 'package:permission_handler/permission_handler.dart';

// ignore_for_file: must_be_immutable
class DashboardContainerScreen extends StatelessWidget {
  DashboardContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  BuildContext? overlayContext;

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;

    // return FutureBuilder<Map<String, dynamic>?>()
    dbUser? user = arguments?['user'];
    String? id = arguments?['id'];

    debugPrint("user in Dashboard screen " +
        (user?.name ?? 'null') +
        " " +
        (user?.hearingLossLevelLeft?.toString() ?? 'null'));

    return SafeArea(
      child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          body: Container(
            //transparent color
            color: Colors.transparent,
            width: SizeUtils.width,
            height: SizeUtils.height,
            child: Navigator(
              key: navigatorKey,
              initialRoute: AppRoutes.dashboardPage,
              onGenerateRoute: (routeSetting) => PageRouteBuilder(
                pageBuilder: (ctx, ani, ani1) => getCurrentPage(
                    routeSetting.name!, overlayContext, user, id),
                transitionDuration: Duration(seconds: 0),
              ),
            ),
          ),
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
    overlayContext = context;
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
        return AppRoutes.profileScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
      String currentRoute, BuildContext? context, dbUser? user, String? id) {
    switch (currentRoute) {
      case AppRoutes.dashboardPage:
        return DashboardPage(
          user: user,
        );
      case AppRoutes.locationScreen:
        return LocationScreen(overlayContext: overlayContext);
      case AppRoutes.profileScreen:
        return ProfileScreen(
          user: user,
          id: id,
          onSignOut: () {
            Navigator.pushNamedAndRemoveUntil(
                context!, AppRoutes.login, (route) => false);
          },
        );
      default:
        return DefaultWidget();
    }
  }

  // onTapContinue(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.locationScreen);
  // }
}
