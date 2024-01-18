import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/custom_app_bar.dart';

class SearchingScreen extends StatelessWidget {
  const SearchingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 43.h, vertical: 10.v),
                child: Column(children: [
                  Text("Searching your watch...",
                      style: theme.textTheme.headlineSmall),
                  SizedBox(height: 5.v),
                  SizedBox(
                      width: 287.h,
                      child: Text("Tap your watch name when it appears below",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLargePrimaryContainer
                              .copyWith(height: 1.40))),
                  SizedBox(height: 84.v),
                  Container(
                      margin: EdgeInsets.only(left: 28.h, right: 20.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 74.h, vertical: 46.v),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImageConstant.imgGroup10),
                              fit: BoxFit.cover)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgThumbsUp,
                                height: 28.v,
                                width: 61.h,
                                margin: EdgeInsets.only(left: 8.h)),
                            Container(
                                margin: EdgeInsets.only(right: 6.h),
                                padding: EdgeInsets.all(3.h),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: fs.Svg(ImageConstant.imgGroup44),
                                        fit: BoxFit.cover)),
                                child: Container(
                                    margin: EdgeInsets.only(right: 3.h),
                                    padding: EdgeInsets.all(7.h),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: fs.Svg(
                                                ImageConstant.imgGroup140),
                                            fit: BoxFit.cover)),
                                    child: Container(
                                        height: 71.v,
                                        width: 58.h,
                                        padding:
                                            EdgeInsets.symmetric(vertical: 1.v),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: fs.Svg(
                                                    ImageConstant.imgGroup168),
                                                fit: BoxFit.cover)),
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height: 58.adaptSize,
                                                      width: 58.adaptSize,
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 7.h,
                                                              vertical: 3.v),
                                                      decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                              image: fs.Svg(
                                                                  ImageConstant
                                                                      .imgGroup169),
                                                              fit: BoxFit
                                                                  .cover)),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgPlay,
                                                                height: 15
                                                                    .adaptSize,
                                                                width: 15
                                                                    .adaptSize,
                                                                alignment: Alignment
                                                                    .centerLeft),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgMobilePrimarycontainer16x16,
                                                                height: 16
                                                                    .adaptSize,
                                                                width: 16
                                                                    .adaptSize,
                                                                alignment: Alignment
                                                                    .centerLeft),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgPlay,
                                                                height: 15
                                                                    .adaptSize,
                                                                width: 15
                                                                    .adaptSize,
                                                                alignment: Alignment
                                                                    .centerRight),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgMobile16x16,
                                                                height: 16
                                                                    .adaptSize,
                                                                width: 16
                                                                    .adaptSize,
                                                                alignment: Alignment
                                                                    .centerRight),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgPlay,
                                                                height: 15
                                                                    .adaptSize,
                                                                width: 15
                                                                    .adaptSize,
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        bottom:
                                                                            4.v)),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgMobile1,
                                                                height: 16
                                                                    .adaptSize,
                                                                width: 16
                                                                    .adaptSize,
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        bottom:
                                                                            3.v)),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgPlayPrimarycontainer,
                                                                height: 15
                                                                    .adaptSize,
                                                                width: 15
                                                                    .adaptSize,
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 3
                                                                            .v)),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgMobile2,
                                                                height: 16
                                                                    .adaptSize,
                                                                width: 16
                                                                    .adaptSize,
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 2
                                                                            .v)),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVectorPrimarycontainer,
                                                                height: 2.v,
                                                                width: 3.h,
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 17
                                                                            .h,
                                                                        top: 21
                                                                            .v)),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVectorPrimarycontainer2x2,
                                                                height:
                                                                    2.adaptSize,
                                                                width:
                                                                    2.adaptSize,
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child:
                                                                    Container(
                                                                        height:
                                                                            7.v,
                                                                        width:
                                                                            8.h,
                                                                        margin: EdgeInsets.only(
                                                                            left: 9
                                                                                .h,
                                                                            top: 13
                                                                                .v),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgVector, height: 7.v, width: 8.h, alignment: Alignment.center),
                                                                              CustomImageView(imagePath: ImageConstant.imgVector, height: 7.v, width: 8.h, alignment: Alignment.center)
                                                                            ]))),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVectorPrimarycontainer,
                                                                height: 2.v,
                                                                width: 3.h,
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 21
                                                                            .v,
                                                                        right: 18
                                                                            .h)),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVectorPrimarycontainer2x2,
                                                                height:
                                                                    2.adaptSize,
                                                                width:
                                                                    2.adaptSize,
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                child:
                                                                    Container(
                                                                        height: 13
                                                                            .v,
                                                                        width: 16
                                                                            .h,
                                                                        margin: EdgeInsets.only(
                                                                            top: 8
                                                                                .v,
                                                                            right: 1
                                                                                .h),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgVector, height: 13.v, width: 16.h, alignment: Alignment.center),
                                                                              CustomImageView(imagePath: ImageConstant.imgVector, height: 13.v, width: 16.h, alignment: Alignment.center)
                                                                            ]))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: SizedBox(
                                                                    height:
                                                                        31.v,
                                                                    child: VerticalDivider(
                                                                        width:
                                                                            1.h,
                                                                        thickness:
                                                                            1.v,
                                                                        color: theme
                                                                            .colorScheme
                                                                            .primaryContainer))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVectorPrimarycontainer1x1,
                                                                          height: 1
                                                                              .adaptSize,
                                                                          width:
                                                                              1.adaptSize),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVectorPrimarycontainer2x2,
                                                                          height: 1
                                                                              .adaptSize,
                                                                          width:
                                                                              1.adaptSize)
                                                                    ])),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVectorOnerrorcontainer42x25,
                                                                height: 42.v,
                                                                width: 25.h,
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ]))),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGroup169,
                                                  height: 10.adaptSize,
                                                  width: 10.adaptSize,
                                                  alignment: Alignment.topLeft,
                                                  margin: EdgeInsets.only(
                                                      left: 2.h)),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGroup169,
                                                  height: 10.adaptSize,
                                                  width: 10.adaptSize,
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  margin: EdgeInsets.only(
                                                      right: 2.h)),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGroup169,
                                                  height: 6.adaptSize,
                                                  width: 6.adaptSize,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin: EdgeInsets.only(
                                                      left: 3.h)),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGroup169,
                                                  height: 6.adaptSize,
                                                  width: 6.adaptSize,
                                                  alignment: Alignment.topRight,
                                                  margin: EdgeInsets.only(
                                                      right: 3.h)),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgContrastPrimarycontainer,
                                                  height: 11.v,
                                                  width: 12.h,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin: EdgeInsets.only(
                                                      left: 2.h, bottom: 4.v)),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgVectorPrimarycontainer3x4,
                                                  height: 3.v,
                                                  width: 4.h,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin: EdgeInsets.only(
                                                      left: 16.h, bottom: 2.v)),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgVectorPrimarycontainer2x2,
                                                  height: 2.adaptSize,
                                                  width: 2.adaptSize,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin: EdgeInsets.only(
                                                      left: 14.h, bottom: 3.v)),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgContrastPrimarycontainer11x12,
                                                  height: 11.v,
                                                  width: 12.h,
                                                  alignment: Alignment.topRight,
                                                  margin: EdgeInsets.only(
                                                      top: 5.v, right: 2.h)),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgVectorPrimarycontainer3x4,
                                                  height: 3.v,
                                                  width: 4.h,
                                                  alignment: Alignment.topRight,
                                                  margin: EdgeInsets.only(
                                                      top: 2.v, right: 16.h)),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgVectorPrimarycontainer2x2,
                                                  height: 2.adaptSize,
                                                  width: 2.adaptSize,
                                                  alignment: Alignment.topRight,
                                                  margin: EdgeInsets.only(
                                                      top: 4.v, right: 14.h))
                                            ])))),
                            SizedBox(height: 3.v),
                            CustomImageView(
                                imagePath: ImageConstant.imgThumbsUp,
                                height: 28.v,
                                width: 61.h,
                                margin: EdgeInsets.only(left: 8.h))
                          ])),
                  SizedBox(height: 12.v),
                  Text("Refresh",
                      style: CustomTextStyles.titleMediumIndigoA70001
                          .copyWith(decoration: TextDecoration.underline)),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 63.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftPrimarycontainer,
            margin: EdgeInsets.only(left: 22.h, top: 7.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarSubtitleTwo(
              text: "Skip", margin: EdgeInsets.fromLTRB(25.h, 17.v, 25.h, 16.v))
        ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
