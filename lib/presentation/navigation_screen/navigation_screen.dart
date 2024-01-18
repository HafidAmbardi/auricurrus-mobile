import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/widgets/custom_elevated_button.dart';
import 'package:hafidomio_s_application2/widgets/custom_floating_button.dart';
import 'package:hafidomio_s_application2/widgets/custom_icon_button.dart';

class NavigationScreen extends StatelessWidget {
  NavigationScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: AppDecoration.fillBlueGray,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgGroup8,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 26.v),
                        _buildMapBackground(context),
                        SizedBox(height: 24.v),
                        _buildThirtyThree(context),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 9.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 15.v,
                  ),
                  decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildTimeRow(context),
                      SizedBox(height: 12.v),
                      Divider(
                        color: appTheme.gray200,
                      ),
                      SizedBox(height: 9.v),
                      SizedBox(
                        height: 482.v,
                        width: 325.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Text(
                                  "Panduan",
                                  style: CustomTextStyles.titleSmallOnError,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  _buildLocationRow(context),
                                  SizedBox(height: 6.v),
                                  _buildDir3Row(context),
                                  SizedBox(height: 6.v),
                                  _buildDir2Row(context),
                                  SizedBox(height: 6.v),
                                  _buildDir4Row(context),
                                  SizedBox(height: 6.v),
                                  _buildDir5Row(context),
                                  SizedBox(height: 6.v),
                                  _buildLinkedinRow(context),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 41.v),
                      CustomElevatedButton(
                        text: "Start",
                        leftIcon: Container(
                          margin: EdgeInsets.only(right: 10.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgSave,
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                          ),
                        ),
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles
                            .gradientIndigoAToPrimaryDecoration,
                      ),
                      SizedBox(height: 16.v),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildMapBackground(BuildContext context) {
    return SizedBox(
      height: 541.v,
      width: 328.h,
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
  Widget _buildThirtyThree(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineOnPrimaryContainer,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "6 min (1.4 km)",
              style: CustomTextStyles.headlineSmallOnError,
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "Rute tercepat saat ini sesuai kondisi lalu lintas",
              style: CustomTextStyles.bodyMediumOnError_1,
            ),
          ),
          SizedBox(height: 12.v),
          CustomElevatedButton(
            text: "Start",
            margin: EdgeInsets.only(left: 1.h),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgSave,
                height: 30.adaptSize,
                width: 30.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientIndigoAToPrimaryDecoration,
          ),
          SizedBox(height: 21.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTimeRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "6 min (1.4 km)",
                style: CustomTextStyles.headlineSmallOnError,
              ),
              SizedBox(
                width: 240.h,
                child: Text(
                  "Rute tercepat saat ini sesuai kondisi lalu lintas",
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumOnError_1.copyWith(
                    height: 1.40,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 43.h,
            bottom: 33.v,
          ),
          child: CustomIconButton(
            height: 42.adaptSize,
            width: 42.adaptSize,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.outlineBlueGrayTL4,
            child: CustomImageView(
              imagePath: ImageConstant.imgCloseOnerror,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLocationRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLocation,
            height: 30.adaptSize,
            width: 30.adaptSize,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 6.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 17.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your location",
                  style: CustomTextStyles.titleMediumOnError,
                ),
                Text(
                  "0 m",
                  style: CustomTextStyles.bodyMediumOnError_2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDir3Row(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightOnerror,
            height: 23.v,
            width: 19.h,
            margin: EdgeInsets.only(
              top: 8.v,
              bottom: 10.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bimasakti 56th Street",
                  style: CustomTextStyles.titleMediumOnError,
                ),
                Text(
                  "200 m",
                  style: CustomTextStyles.bodyMediumOnError_2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDir2Row(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgQuestion,
            height: 30.adaptSize,
            width: 30.adaptSize,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 6.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 17.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Yogya Skye Street",
                  style: CustomTextStyles.titleMediumOnError,
                ),
                Text(
                  "300 m",
                  style: CustomTextStyles.bodyMediumOnError_2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDir4Row(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgQuestionOnerror,
            height: 30.adaptSize,
            width: 30.adaptSize,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 6.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 17.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kaliurang Street",
                  style: CustomTextStyles.titleMediumOnError,
                ),
                Text(
                  "100 m",
                  style: CustomTextStyles.bodyMediumOnError_2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDir5Row(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgQuestionOnerror,
            height: 30.adaptSize,
            width: 30.adaptSize,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 6.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 17.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Malioboro Street",
                  style: CustomTextStyles.titleMediumOnError,
                ),
                Text(
                  "200 m",
                  style: CustomTextStyles.bodyMediumOnError_2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLinkedinRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLinkedinRed600,
            height: 30.v,
            width: 24.h,
            margin: EdgeInsets.only(bottom: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 19.h,
              top: 5.v,
              bottom: 7.v,
            ),
            child: Text(
              "Arrive",
              style: CustomTextStyles.titleMediumOnError,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 42,
      width: 42,
      backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
      child: CustomImageView(
        imagePath: ImageConstant.imgContrastIndigoA7000142x42,
        height: 21.0.v,
        width: 21.0.h,
      ),
    );
  }
}
