import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/presentation/dashboard_page/dashboard_page.dart';
import 'package:hafidomio_s_application2/widgets/custom_bottom_app_bar.dart';
import 'package:hafidomio_s_application2/widgets/custom_floating_button.dart';
import 'package:hafidomio_s_application2/widgets/custom_icon_button.dart';

class LoadingDriveScreen extends StatelessWidget {
  LoadingDriveScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: AppDecoration.fillBlueGray,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.h,
                      vertical: 26.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgGroup8,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: _buildMapBackground(context),
                  ),
                ),
                SizedBox(height: 5.v),
                _buildIosAlphabeticKeyboard(context),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildNavbarsFiverdActive(context),
        floatingActionButton: CustomFloatingButton(
          height: 92,
          width: 76,
          child: Icon(
            Icons.add,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  Widget _buildMapBackground(BuildContext context) {
    return SizedBox(
      height: 541.v,
      width: 325.h,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildIosAlphabeticKeyboard(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 5.v),
          decoration: AppDecoration.fillGray,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 12.v,
                  bottom: 2.v,
                ),
                child: Text(
                  "Suggest",
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeSFProTextOnErrorContainer_1,
                ),
              ),
              SizedBox(
                height: 34.v,
                child: VerticalDivider(
                  width: 1.h,
                  thickness: 1.v,
                  indent: 10.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 12.v,
                  bottom: 2.v,
                ),
                child: Text(
                  "Suggest",
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeSFProTextOnErrorContainer_1,
                ),
              ),
              SizedBox(
                height: 34.v,
                child: VerticalDivider(
                  width: 1.h,
                  thickness: 1.v,
                  indent: 10.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 12.v,
                  bottom: 2.v,
                ),
                child: Text(
                  "Suggest",
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeSFProTextOnErrorContainer_1,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 220.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 3.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.fillGray,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 32.h,
                          padding: EdgeInsets.all(7.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "Q",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Container(
                          width: 32.h,
                          margin: EdgeInsets.only(left: 5.h),
                          padding: EdgeInsets.all(7.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "W",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Container(
                          width: 32.h,
                          margin: EdgeInsets.only(left: 5.h),
                          padding: EdgeInsets.all(7.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "E",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Container(
                          width: 32.h,
                          margin: EdgeInsets.only(left: 5.h),
                          padding: EdgeInsets.all(7.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "R",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Container(
                          width: 32.h,
                          margin: EdgeInsets.only(left: 5.h),
                          padding: EdgeInsets.all(7.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "T",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Container(
                          width: 32.h,
                          margin: EdgeInsets.only(left: 5.h),
                          padding: EdgeInsets.all(7.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "Y",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Container(
                          width: 32.h,
                          margin: EdgeInsets.only(left: 5.h),
                          padding: EdgeInsets.all(7.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "U",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Container(
                          width: 32.h,
                          margin: EdgeInsets.only(left: 5.h),
                          padding: EdgeInsets.all(7.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "I",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Container(
                          width: 32.h,
                          margin: EdgeInsets.only(left: 5.h),
                          padding: EdgeInsets.all(7.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "O",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Container(
                          width: 32.h,
                          margin: EdgeInsets.only(left: 5.h),
                          padding: EdgeInsets.all(7.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "P",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 32.h,
                            padding: EdgeInsets.all(7.h),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "A",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          Container(
                            width: 32.h,
                            margin: EdgeInsets.only(left: 5.h),
                            padding: EdgeInsets.all(7.h),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "S",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          Container(
                            width: 32.h,
                            margin: EdgeInsets.only(left: 4.h),
                            padding: EdgeInsets.all(7.h),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "D",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          Container(
                            width: 32.h,
                            margin: EdgeInsets.only(left: 5.h),
                            padding: EdgeInsets.all(7.h),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "F",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          Container(
                            width: 32.h,
                            margin: EdgeInsets.only(left: 4.h),
                            padding: EdgeInsets.all(7.h),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "G",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          Container(
                            width: 32.h,
                            margin: EdgeInsets.only(left: 5.h),
                            padding: EdgeInsets.all(7.h),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "H",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          Container(
                            width: 32.h,
                            margin: EdgeInsets.only(left: 4.h),
                            padding: EdgeInsets.all(7.h),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "J",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          Container(
                            width: 32.h,
                            margin: EdgeInsets.only(left: 5.h),
                            padding: EdgeInsets.all(7.h),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "K",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          Container(
                            width: 32.h,
                            margin: EdgeInsets.only(left: 4.h),
                            padding: EdgeInsets.all(7.h),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "L",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 66.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 87.h,
                          padding: EdgeInsets.all(11.h),
                          decoration: AppDecoration.outlineBlack900.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "123",
                            style: CustomTextStyles
                                .bodyLargeSFProTextOnErrorContainer,
                          ),
                        ),
                        Container(
                          width: 182.h,
                          margin: EdgeInsets.only(left: 6.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 11.h,
                            vertical: 10.v,
                          ),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "space",
                            style: CustomTextStyles
                                .bodyLargeSFProTextOnErrorContainer,
                          ),
                        ),
                        Container(
                          width: 88.h,
                          margin: EdgeInsets.only(left: 6.h),
                          padding: EdgeInsets.all(11.h),
                          decoration: AppDecoration.outlineBlack900.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "Go",
                            style: CustomTextStyles
                                .bodyLargeSFProTextOnErrorContainer,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 54.v),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 42.adaptSize,
                        width: 42.adaptSize,
                        padding: EdgeInsets.all(11.h),
                        decoration: IconButtonStyleHelper.outlineBlack,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgHome,
                        ),
                      ),
                      Container(
                        width: 257.h,
                        margin: EdgeInsets.only(left: 14.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 32.h,
                              padding: EdgeInsets.all(7.h),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "Z",
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            Container(
                              width: 32.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.all(7.h),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "X",
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            Container(
                              width: 32.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.all(7.h),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "C",
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            Container(
                              width: 32.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.all(7.h),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "V",
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            Container(
                              width: 32.h,
                              margin: EdgeInsets.only(left: 4.h),
                              padding: EdgeInsets.all(7.h),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "B",
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            Container(
                              width: 32.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.all(7.h),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "N",
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            Container(
                              width: 32.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.all(7.h),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "M",
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 14.h),
                        child: CustomIconButton(
                          height: 42.adaptSize,
                          width: 42.adaptSize,
                          padding: EdgeInsets.all(11.h),
                          decoration: IconButtonStyleHelper.outlineBlackTL4,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgHome,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNavbarsFiverdActive(BuildContext context) {
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
      default:
        return DefaultWidget();
    }
  }
}
