import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hafidomio_s_application2/backend/model/user.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/main.dart';
import 'package:hafidomio_s_application2/presentation/dashboard_page/dashboard_page.dart';
import 'package:hafidomio_s_application2/presentation/location_screen/location_screen.dart';
import 'package:hafidomio_s_application2/presentation/profile_screen/profile_screen.dart';
import 'package:hafidomio_s_application2/widgets/custom_bottom_app_bar.dart';
import 'package:hafidomio_s_application2/widgets/custom_floating_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

// ignore_for_file: must_be_immutable

//////////////////////////////////////
class DashboardContainerScreen extends StatelessWidget {
  DashboardContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  BuildContext? overlayContext;

  @override
  Widget build(BuildContext context) {
    final IO.Socket socket = IO.io('http://10.0.2.2:3001', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': true,
    });
    Map<String, dynamic>? arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;
    debugPrint(arguments.toString());

    return FutureBuilder<Map<String, dynamic>?>(
      future: Future.value(
          ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic>? arguments = snapshot.data;
          if (arguments == null) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.levelHearScreen,
      (route) => false,
    );
  });
  return SizedBox.shrink();
}

          //RETURN MAIN HERE
          dbUser? user = arguments['user'];
          String? id = arguments['id'];

          debugPrint("user in Dashboard screen " +
              user!.name +
              " " +
              user.hearingLossLevelLeft);

          // return SafeArea(
          //   child: Scaffold(
          //       extendBody: true,
          //       extendBodyBehindAppBar: true,
          //       body: Container(
          //         //transparent color
          //         color: Colors.transparent,
          //         width: SizeUtils.width,
          //         height: SizeUtils.height,
          //         child: Navigator(
          //           key: navigatorKey,
          //           initialRoute: AppRoutes.dashboardPage,
          //           onGenerateRoute: (routeSetting) => PageRouteBuilder(
          //             pageBuilder: (ctx, ani, ani1) => getCurrentPage(
          //                 routeSetting.name!, overlayContext, user, id, socket),
          //             transitionDuration: Duration(seconds: 0),
          //           ),
          //         ),
          //       ),
          //       bottomNavigationBar: _buildNavbarsFiverdActive(context),
          //       floatingActionButtonLocation:
          //           FloatingActionButtonLocation.centerDocked),
          // );

          return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          color: Colors.transparent,
          width: SizeUtils.width,
          height: SizeUtils.height,
          child: Navigator(
            key: navigatorKey,
            initialRoute: AppRoutes.dashboardPage,
            onGenerateRoute: (routeSetting) => PageRouteBuilder(
              pageBuilder: (ctx, ani, ani1) => getCurrentPage(
                routeSetting.name!,
                overlayContext,
                user,
                id,
                socket,
              ),
              transitionDuration: Duration(seconds: 0),
            ),
          ),
        ),
        bottomNavigationBar: _buildNavbarsFiverdActive(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),);
        } else
          return CircularProgressIndicator();
      },
    );
  }

  //////////////////////////////////////////////////////////////////

  // if (arguments == null){
  //   Navigator.popAndPushNamed(context, AppRoutes.nameFilledScreen);
  // }

  // Access the dbUser and id
  //   dbUser? user = arguments?['user'];
  //   String? id = arguments?['id'];

  //   debugPrint("user in Dashboard screen " + user!.name + " " + user.hearingLossLevelLeft);

  //   return SafeArea(
  //     child: Scaffold(
  //         extendBody: true,
  //         extendBodyBehindAppBar: true,
  //         body: Container(
  //             //transparent color
  //             color: Colors.transparent,
  //             width: SizeUtils.width,
  //             height: SizeUtils.height,
  //             child: Navigator(
  //                 key: navigatorKey,
  //                 initialRoute: AppRoutes.dashboardPage,
  //                 onGenerateRoute: (routeSetting) => PageRouteBuilder(
  //                     pageBuilder: (ctx, ani, ani1) =>
  //                         getCurrentPage(routeSetting.name!, overlayContext, user, id, socket),
  //                     transitionDuration: Duration(seconds: 0)))),
  //         bottomNavigationBar: _buildNavbarsFiverdActive(context),
  //         floatingActionButtonLocation:
  //             FloatingActionButtonLocation.centerDocked),
  //   );

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

  // Widget getCurrentPage(String currentRoute, BuildContext? context,
  //     dbUser? user, String? id, IO.Socket socket) {
  //   switch (currentRoute) {
  //     case AppRoutes.dashboardPage:
  //       return DashboardPage(user: user, id: id);
  //     case AppRoutes.locationScreen:
  //       return LocationScreen(
  //         overlayContext: overlayContext,
  //         // socket: socket,
  //       );
  //     case AppRoutes.profileScreen:
  //       return ProfileScreen();
  //     default:
  //       return DefaultWidget();
  //   }
  // }

   Widget getCurrentPage(
    String currentRoute,
    BuildContext? context,
    dbUser? user,
    String? id,
    IO.Socket socket,
  ) {
    switch (currentRoute) {
      case AppRoutes.dashboardPage:
        return DashboardPageContainer(user: user, id: id, socket: socket);
      case AppRoutes.locationScreen:
        return LocationScreen(
          overlayContext: overlayContext,
          // socket: socket,
        );
      case AppRoutes.profileScreen:
        return ProfileScreen(user: user,
          onSignOut: () {
            Navigator.pushNamedAndRemoveUntil(context!, AppRoutes.levelHearScreen, (route) => false);
            // Navigator.pushReplacementNamed(context!, AppRoutes.login);
            // Navigator.pushNamed(context!, AppRoutes.login);
            debugPrint('navigating back to login screen');
           }
        );
      default:
        return DefaultWidget();
    }
  }


  
}


  // onTapContinue(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.locationScreen);
  // }







  class DashboardPageContainer extends StatelessWidget {
  final dbUser? user;
  final String? id;
  final IO.Socket? socket;

  DashboardPageContainer({Key? key, this.user, this.socket, this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (routeSetting) => PageRouteBuilder(
        pageBuilder: (ctx, ani, ani1) => DashboardPage(
          user: user,
          id: id,
          socket: socket,
        ),
        transitionDuration: Duration(seconds: 0),
      ),
    );
  }
}

