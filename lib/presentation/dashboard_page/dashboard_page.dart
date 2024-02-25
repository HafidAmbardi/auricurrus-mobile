import 'package:hafidomio_s_application2/backend/model/user.dart';

import '../dashboard_page/widgets/howlong_item_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/appbar_title_button.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:hafidomio_s_application2/widgets/custom_icon_button.dart';
import 'package:hafidomio_s_application2/pages/map/map_page.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore_for_file: must_be_immutable
class DashboardPage extends StatelessWidget {
  final dbUser? user;
  DashboardPage({Key? key, this.user}) : super(key: key);

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            appBar: _buildAppBar(context, user),
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                child: SingleChildScrollView(
                    child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle363,
                      height: 1.v,
                      width: 375.h),
                  SizedBox(height: 127.v),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.h, vertical: 17.v),
                      decoration: AppDecoration.fillOnErrorContainer,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Your current location",
                                style: CustomTextStyles
                                    .titleMediumPrimaryContainer_2),
                            Text("Drag to see more",
                                style: CustomTextStyles.bodyMediumOnError),
                            SizedBox(height: 12.v),
                            _buildMap(context),
                            SizedBox(height: 12.v),
                            Container(
                                decoration: AppDecoration.outlineBluegray40014,
                                child: Column(children: [
                                  // _buildHowLong(context),
                                  SizedBox(height: 11.v),
                                  _buildDeviceConnect(context)
                                ])),
                            SizedBox(height: 49.v)
                          ]))
                ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context, dbUser? user) {
    return CustomAppBar(
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
                            margin: EdgeInsets.only(left: 224.h, bottom: 48.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.h, vertical: 3.v),
                            decoration: AppDecoration.outlineBlueGray.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL24),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
        styleType: Style.bgGradientnameindigoA70001nameprimary);
  }

  /// Section Widget
  /// Put Google Map here
  Widget _buildMap(BuildContext context) {
    return SizedBox(
        height: 160.v,
        width: 325.h,
        child: Container(
          color: Colors.black,
          child: MapPage(
            showPlacesApiGoogleMapSearch: false,
          ),
        ));
  }

  // /// Section Widget
  // Widget _buildHowLong(BuildContext context) {
  //   return StaggeredGridView.countBuilder(
  //       shrinkWrap: true,
  //       primary: false,
  //       crossAxisCount: 4,
  //       crossAxisSpacing: 14.75.h,
  //       mainAxisSpacing: 14.75.h,
  //       staggeredTileBuilder: (index) {
  //         return StaggeredTile.fit(2);
  //       },
  //       itemCount: 4,
  //       itemBuilder: (context, index) {
  //         return HowlongItemWidget(onTapBtnArrowImage: () {
  //           onTapBtnArrowImage(context);
  //         });
  //       });
  // }

  /// Section Widget
  Widget _buildDeviceConnect(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v),
        decoration: AppDecoration.outlineBluegray100
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 4.v, bottom: 8.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Device connected",
                            style:
                                CustomTextStyles.titleMediumPrimaryContainer_2),
                        SizedBox(height: 1.v),
                        Text("Apple Watch S8 G78K",
                            style: CustomTextStyles.bodyMediumOnError),
                        SizedBox(height: 10.v),
                        Text("Status",
                            style: CustomTextStyles.titleSmallOnError_1),
                        SizedBox(height: 6.v),
                        Row(children: [
                          CustomIconButton(
                              height: 42.adaptSize,
                              width: 42.adaptSize,
                              padding: EdgeInsets.all(7.h),
                              decoration: IconButtonStyleHelper.fillGreen,
                              child:
                                  SvgPicture.asset(ImageConstant.imgCheckmark)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 12.h, top: 12.v, bottom: 12.v),
                              child: Text("Paired",
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodyMediumOnError))
                        ])
                      ])),
              Padding(
                  padding: EdgeInsets.only(top: 4.v, right: 7.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: SvgPicture.asset(
                              ImageConstant.imgThumbsUp,
                              height: 25.v,
                              width: 54.h,
                            ),
                            margin: EdgeInsets.only(left: 7.h)),
                        Container(
                            padding: EdgeInsets.all(2.h),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: fs.Svg(ImageConstant.imgGroup44),
                                    fit: BoxFit.cover)),
                            child: Container(
                                height: 76.v,
                                width: 65.h,
                                padding: EdgeInsets.all(6.h),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            fs.Svg(ImageConstant.imgGroup140),
                                        fit: BoxFit.cover)),
                                child: Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: 63.v,
                                              width: 52.h,
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 1.v),
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: fs.Svg(
                                                          ImageConstant
                                                              .imgGroup141),
                                                      fit: BoxFit.cover)),
                                              child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Container(
                                                            height:
                                                                52.adaptSize,
                                                            width: 52.adaptSize,
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        6.h,
                                                                    vertical:
                                                                        3.v),
                                                            decoration: BoxDecoration(
                                                                image: DecorationImage(
                                                                    image: fs.Svg(
                                                                        ImageConstant
                                                                            .imgGroup142),
                                                                    fit: BoxFit
                                                                        .cover)),
                                                            child: Stack(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                children: [
                                                                  SvgPicture.asset(
                                                                      ImageConstant
                                                                          .imgClose,
                                                                      height: 14
                                                                          .adaptSize,
                                                                      width: 14
                                                                          .adaptSize,
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft),
                                                                  SvgPicture.asset(
                                                                      ImageConstant
                                                                          .imgContrastIndigoA70001,
                                                                      height: 14
                                                                          .adaptSize,
                                                                      width: 14
                                                                          .adaptSize,
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft),
                                                                  SvgPicture.asset(
                                                                      ImageConstant
                                                                          .imgClose,
                                                                      height: 14
                                                                          .adaptSize,
                                                                      width: 14
                                                                          .adaptSize,
                                                                      alignment:
                                                                          Alignment
                                                                              .centerRight),
                                                                  SvgPicture.asset(
                                                                      ImageConstant
                                                                          .imgContrastIndigoA7000114x14,
                                                                      height: 14
                                                                          .adaptSize,
                                                                      width: 14
                                                                          .adaptSize,
                                                                      alignment:
                                                                          Alignment
                                                                              .centerRight),
                                                                  Container(
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        ImageConstant
                                                                            .imgClose,
                                                                        height:
                                                                            14.adaptSize,
                                                                        width: 14
                                                                            .adaptSize,
                                                                        alignment:
                                                                            Alignment.bottomCenter,
                                                                      ),
                                                                      margin: EdgeInsets.only(
                                                                          bottom:
                                                                              3.v)),
                                                                  Container(
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        ImageConstant
                                                                            .imgContrast14x14,
                                                                        height:
                                                                            14.adaptSize,
                                                                        width: 14
                                                                            .adaptSize,
                                                                        alignment:
                                                                            Alignment.bottomCenter,
                                                                      ),
                                                                      margin: EdgeInsets.only(
                                                                          bottom:
                                                                              3.v)),
                                                                  Container(
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        ImageConstant
                                                                            .imgCloseIndigoA70001,
                                                                        height:
                                                                            14.adaptSize,
                                                                        width: 14
                                                                            .adaptSize,
                                                                        alignment:
                                                                            Alignment.topCenter,
                                                                      ),
                                                                      margin: EdgeInsets.only(
                                                                          top: 2
                                                                              .v)),
                                                                  Container(
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        ImageConstant
                                                                            .imgContrast1,
                                                                        height:
                                                                            14.adaptSize,
                                                                        width: 14
                                                                            .adaptSize,
                                                                        alignment:
                                                                            Alignment.topCenter,
                                                                      ),
                                                                      margin: EdgeInsets.only(
                                                                          top: 2
                                                                              .v)),
                                                                  Container(
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        ImageConstant
                                                                            .imgVectorIndigoA70001,
                                                                        height:
                                                                            2.adaptSize,
                                                                        width: 2
                                                                            .adaptSize,
                                                                        alignment:
                                                                            Alignment.topLeft,
                                                                      ),
                                                                      margin: EdgeInsets.only(
                                                                          left: 15
                                                                              .h,
                                                                          top: 19
                                                                              .v)),
                                                                  SvgPicture.asset(
                                                                      ImageConstant
                                                                          .imgVectorIndigoA700012x2,
                                                                      height: 2
                                                                          .adaptSize,
                                                                      width: 2
                                                                          .adaptSize,
                                                                      alignment:
                                                                          Alignment
                                                                              .center),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .topLeft,
                                                                      child: Container(
                                                                          height: 6.v,
                                                                          width: 7.h,
                                                                          margin: EdgeInsets.only(left: 8.h, top: 12.v),
                                                                          child: Stack(alignment: Alignment.center, children: [
                                                                            SvgPicture.asset(ImageConstant.imgSettingsIndigoA70001,
                                                                                height: 6.v,
                                                                                width: 7.h,
                                                                                alignment: Alignment.center),
                                                                            SvgPicture.asset(ImageConstant.imgSettingsIndigoA70001,
                                                                                height: 6.v,
                                                                                width: 7.h,
                                                                                alignment: Alignment.center)
                                                                          ]))),
                                                                  Container(
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        ImageConstant
                                                                            .imgVectorIndigoA70001,
                                                                        height:
                                                                            2.adaptSize,
                                                                        width: 2
                                                                            .adaptSize,
                                                                        alignment:
                                                                            Alignment.topRight,
                                                                      ),
                                                                      margin: EdgeInsets.only(
                                                                          top: 19
                                                                              .v,
                                                                          right:
                                                                              15.h)),
                                                                  SvgPicture.asset(
                                                                      ImageConstant
                                                                          .imgVectorIndigoA700012x2,
                                                                      height: 2
                                                                          .adaptSize,
                                                                      width: 2
                                                                          .adaptSize,
                                                                      alignment:
                                                                          Alignment
                                                                              .center),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .topRight,
                                                                      child: Container(
                                                                          height: 12.v,
                                                                          width: 14.h,
                                                                          margin: EdgeInsets.only(top: 7.v, right: 1.h),
                                                                          child: Stack(alignment: Alignment.center, children: [
                                                                            SvgPicture.asset(ImageConstant.imgSettingsIndigoA70001,
                                                                                height: 12.v,
                                                                                width: 14.h,
                                                                                alignment: Alignment.center),
                                                                            SvgPicture.asset(ImageConstant.imgSettingsIndigoA70001,
                                                                                height: 12.v,
                                                                                width: 14.h,
                                                                                alignment: Alignment.center)
                                                                          ]))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomCenter,
                                                                      child: SizedBox(
                                                                          height: 27
                                                                              .v,
                                                                          child: VerticalDivider(
                                                                              width: 1.h,
                                                                              thickness: 1.v,
                                                                              color: appTheme.indigoA70001))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            SvgPicture.asset(ImageConstant.imgVectorIndigoA700011x1,
                                                                                height: 1.adaptSize,
                                                                                width: 1.adaptSize),
                                                                            SvgPicture.asset(ImageConstant.imgVectorIndigoA700012x2,
                                                                                height: 1.adaptSize,
                                                                                width: 1.adaptSize)
                                                                          ]))
                                                                ]))),
                                                    Container(
                                                        child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgGroup142,
                                                          height: 9.adaptSize,
                                                          width: 9.adaptSize,
                                                          alignment:
                                                              Alignment.topLeft,
                                                        ),
                                                        margin: EdgeInsets.only(
                                                            left: 1.h)),
                                                    Container(
                                                        child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgGroup142,
                                                          height: 9.adaptSize,
                                                          width: 9.adaptSize,
                                                          alignment: Alignment
                                                              .bottomRight,
                                                        ),
                                                        margin: EdgeInsets.only(
                                                            right: 1.h)),
                                                    Container(
                                                        child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgVectorIndigoA700012x2,
                                                          height: 5.adaptSize,
                                                          width: 5.adaptSize,
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                        ),
                                                        margin: EdgeInsets.only(
                                                            left: 3.h)),
                                                    Container(
                                                        child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgVectorIndigoA700012x2,
                                                          height: 5.adaptSize,
                                                          width: 5.adaptSize,
                                                          alignment: Alignment
                                                              .topRight,
                                                        ),
                                                        margin: EdgeInsets.only(
                                                            right: 3.h)),
                                                    Container(
                                                        child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgContrastIndigoA700019x10,
                                                          height: 9.v,
                                                          width: 10.h,
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                        ),
                                                        margin: EdgeInsets.only(
                                                            left: 2.h,
                                                            bottom: 4.v)),
                                                    Container(
                                                        child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgVectorIndigoA700012x3,
                                                          height: 2.v,
                                                          width: 3.h,
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                        ),
                                                        margin: EdgeInsets.only(
                                                            left: 14.h,
                                                            bottom: 2.v)),
                                                    Container(
                                                        child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgVectorIndigoA700012x2,
                                                          height: 1.adaptSize,
                                                          width: 1.adaptSize,
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                        ),
                                                        margin: EdgeInsets.only(
                                                            left: 12.h,
                                                            bottom: 3.v)),
                                                    Container(
                                                        child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgSettingsIndigoA700019x10,
                                                          height: 9.v,
                                                          width: 10.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                        ),
                                                        margin: EdgeInsets.only(
                                                            top: 4.v,
                                                            right: 2.h)),
                                                    Container(
                                                        child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgVectorIndigoA700012x3,
                                                          height: 2.v,
                                                          width: 3.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                        ),
                                                        margin: EdgeInsets.only(
                                                            top: 2.v,
                                                            right: 14.h)),
                                                    Container(
                                                        child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgVectorIndigoA700012x2,
                                                          height: 1.adaptSize,
                                                          width: 1.adaptSize,
                                                          alignment: Alignment
                                                              .topRight,
                                                        ),
                                                        margin: EdgeInsets.only(
                                                            top: 3.v,
                                                            right: 12.h))
                                                  ]))),
                                      SvgPicture.asset(
                                          ImageConstant
                                              .imgVectorOnerrorcontainer42x25,
                                          height: 48.adaptSize,
                                          width: 48.adaptSize,
                                          alignment: Alignment.centerRight)
                                    ]))),
                        Container(
                            child: SvgPicture.asset(
                              ImageConstant.imgThumbsUp,
                              height: 25.v,
                              width: 54.h,
                            ),
                            margin: EdgeInsets.only(left: 7.h))
                      ]))
            ]));
  }

  /// Navigates to the tripLisScreen when the action is triggered.
  onTapBtnArrowImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.tripLisScreen);
  }
}
