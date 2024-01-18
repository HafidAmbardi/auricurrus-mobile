import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/widgets/custom_elevated_button.dart';
import 'package:hafidomio_s_application2/widgets/custom_icon_button.dart';

class PairedScreen extends StatelessWidget {
  const PairedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 70.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Paired!", style: theme.textTheme.headlineSmall),
                      SizedBox(height: 8.v),
                      Container(
                          width: 298.h,
                          margin: EdgeInsets.symmetric(horizontal: 13.h),
                          child: Text(
                              "Your personal information will be synced between your phone and wearable device via the Auricurrus app.",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargePrimaryContainer
                                  .copyWith(height: 1.40))),
                      Spacer(flex: 36),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 37.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgThumbsUp,
                                          height: 28.v,
                                          width: 61.h,
                                          margin: EdgeInsets.only(left: 8.h)),
                                      Container(
                                          padding: EdgeInsets.all(3.h),
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: fs.Svg(
                                                      ImageConstant.imgGroup44),
                                                  fit: BoxFit.cover)),
                                          child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 3.h),
                                              padding: EdgeInsets.all(7.h),
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: fs.Svg(
                                                          ImageConstant
                                                              .imgGroup45),
                                                      fit: BoxFit.cover)),
                                              child: Container(
                                                  height: 71.v,
                                                  width: 58.h,
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 1.v),
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: fs.Svg(
                                                              ImageConstant
                                                                  .imgGroup136),
                                                          fit: BoxFit.cover)),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                height: 58
                                                                    .adaptSize,
                                                                width: 58
                                                                    .adaptSize,
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            7.h,
                                                                        vertical: 3
                                                                            .v),
                                                                decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                        image: fs.Svg(ImageConstant
                                                                            .imgGroup137),
                                                                        fit: BoxFit
                                                                            .cover)),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgMobile,
                                                                          height: 15
                                                                              .adaptSize,
                                                                          width: 15
                                                                              .adaptSize,
                                                                          alignment:
                                                                              Alignment.centerLeft),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgContrast,
                                                                          height: 16
                                                                              .adaptSize,
                                                                          width: 16
                                                                              .adaptSize,
                                                                          alignment:
                                                                              Alignment.centerLeft),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgMobile,
                                                                          height: 15
                                                                              .adaptSize,
                                                                          width: 15
                                                                              .adaptSize,
                                                                          alignment:
                                                                              Alignment.centerRight),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgContrastOnerrorcontainer,
                                                                          height: 16
                                                                              .adaptSize,
                                                                          width: 16
                                                                              .adaptSize,
                                                                          alignment:
                                                                              Alignment.centerRight),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgMobile,
                                                                          height: 15
                                                                              .adaptSize,
                                                                          width: 15
                                                                              .adaptSize,
                                                                          alignment: Alignment
                                                                              .bottomCenter,
                                                                          margin:
                                                                              EdgeInsets.only(bottom: 4.v)),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgContrastOnerrorcontainer16x16,
                                                                          height: 16
                                                                              .adaptSize,
                                                                          width: 16
                                                                              .adaptSize,
                                                                          alignment: Alignment
                                                                              .bottomCenter,
                                                                          margin:
                                                                              EdgeInsets.only(bottom: 3.v)),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgMobileOnerrorcontainer,
                                                                          height: 15
                                                                              .adaptSize,
                                                                          width: 15
                                                                              .adaptSize,
                                                                          alignment: Alignment
                                                                              .topCenter,
                                                                          margin:
                                                                              EdgeInsets.only(top: 3.v)),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgContrast16x16,
                                                                          height: 16
                                                                              .adaptSize,
                                                                          width: 16
                                                                              .adaptSize,
                                                                          alignment: Alignment
                                                                              .topCenter,
                                                                          margin:
                                                                              EdgeInsets.only(top: 2.v)),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVectorOnerrorcontainer,
                                                                          height: 2
                                                                              .v,
                                                                          width: 3
                                                                              .h,
                                                                          alignment: Alignment
                                                                              .topLeft,
                                                                          margin: EdgeInsets.only(
                                                                              left: 17.h,
                                                                              top: 21.v)),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVectorOnerrorcontainer2x2,
                                                                          height: 2
                                                                              .adaptSize,
                                                                          width: 2
                                                                              .adaptSize,
                                                                          alignment:
                                                                              Alignment.center),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.topLeft,
                                                                          child: Container(
                                                                              height: 7.v,
                                                                              width: 8.h,
                                                                              margin: EdgeInsets.only(left: 9.h, top: 13.v),
                                                                              child: Stack(alignment: Alignment.center, children: [
                                                                                CustomImageView(imagePath: ImageConstant.imgContrastOnerrorcontainer7x8, height: 7.v, width: 8.h, alignment: Alignment.center),
                                                                                CustomImageView(imagePath: ImageConstant.imgContrastOnerrorcontainer7x8, height: 7.v, width: 8.h, alignment: Alignment.center)
                                                                              ]))),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVectorOnerrorcontainer,
                                                                          height: 2
                                                                              .v,
                                                                          width: 3
                                                                              .h,
                                                                          alignment: Alignment
                                                                              .topRight,
                                                                          margin: EdgeInsets.only(
                                                                              top: 21.v,
                                                                              right: 18.h)),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVectorOnerrorcontainer2x2,
                                                                          height: 2
                                                                              .adaptSize,
                                                                          width: 2
                                                                              .adaptSize,
                                                                          alignment:
                                                                              Alignment.center),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.topRight,
                                                                          child: Container(
                                                                              height: 13.v,
                                                                              width: 16.h,
                                                                              margin: EdgeInsets.only(top: 8.v, right: 1.h),
                                                                              child: Stack(alignment: Alignment.center, children: [
                                                                                CustomImageView(imagePath: ImageConstant.imgContrastOnerrorcontainer7x8, height: 13.v, width: 16.h, alignment: Alignment.center),
                                                                                CustomImageView(imagePath: ImageConstant.imgContrastOnerrorcontainer7x8, height: 13.v, width: 16.h, alignment: Alignment.center)
                                                                              ]))),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .bottomCenter,
                                                                          child: SizedBox(
                                                                              height: 31.v,
                                                                              child: VerticalDivider(width: 1.h, thickness: 1.v, color: theme.colorScheme.onErrorContainer.withOpacity(1)))),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .center,
                                                                          child: Row(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                CustomImageView(imagePath: ImageConstant.imgVectorOnerrorcontainer1x1, height: 1.adaptSize, width: 1.adaptSize),
                                                                                CustomImageView(imagePath: ImageConstant.imgVectorOnerrorcontainer2x2, height: 1.adaptSize, width: 1.adaptSize)
                                                                              ])),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVectorOnerrorcontainer42x25,
                                                                          height: 42
                                                                              .v,
                                                                          width: 25
                                                                              .h,
                                                                          alignment:
                                                                              Alignment.center),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgSettings,
                                                                          height: 25
                                                                              .v,
                                                                          width: 32
                                                                              .h,
                                                                          alignment: Alignment
                                                                              .centerRight,
                                                                          margin:
                                                                              EdgeInsets.only(right: 3.h))
                                                                    ]))),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgGroup137,
                                                            height:
                                                                10.adaptSize,
                                                            width: 10.adaptSize,
                                                            alignment: Alignment
                                                                .topLeft,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 2.h)),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgGroup137,
                                                            height:
                                                                10.adaptSize,
                                                            width: 10.adaptSize,
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right:
                                                                        2.h)),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgGroup137,
                                                            height: 6.adaptSize,
                                                            width: 6.adaptSize,
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 3.h)),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgGroup137,
                                                            height: 6.adaptSize,
                                                            width: 6.adaptSize,
                                                            alignment: Alignment
                                                                .topRight,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right:
                                                                        3.h)),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgContrastOnerrorcontainer11x12,
                                                            height: 11.v,
                                                            width: 12.h,
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 2.h,
                                                                    bottom:
                                                                        4.v)),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgVectorOnerrorcontainer3x4,
                                                            height: 3.v,
                                                            width: 4.h,
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 16.h,
                                                                    bottom:
                                                                        2.v)),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgVectorOnerrorcontainer2x2,
                                                            height: 2.adaptSize,
                                                            width: 2.adaptSize,
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 14.h,
                                                                    bottom:
                                                                        3.v)),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgContrast11x12,
                                                            height: 11.v,
                                                            width: 12.h,
                                                            alignment: Alignment
                                                                .topRight,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 5.v,
                                                                    right:
                                                                        2.h)),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgVectorOnerrorcontainer3x4,
                                                            height: 3.v,
                                                            width: 4.h,
                                                            alignment: Alignment
                                                                .topRight,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 2.v,
                                                                    right:
                                                                        16.h)),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgVectorOnerrorcontainer2x2,
                                                            height: 2.adaptSize,
                                                            width: 2.adaptSize,
                                                            alignment: Alignment
                                                                .topRight,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 4.v,
                                                                    right:
                                                                        14.h))
                                                      ])))),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgThumbsUp,
                                          height: 28.v,
                                          width: 61.h,
                                          margin: EdgeInsets.only(left: 8.h))
                                    ]),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 20.h, top: 51.v, bottom: 50.v),
                                    child: CustomIconButton(
                                        height: 42.adaptSize,
                                        width: 42.adaptSize,
                                        padding: EdgeInsets.all(7.h),
                                        decoration:
                                            IconButtonStyleHelper.fillGreen,
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgCheckmark))),
                                Spacer(),
                                Container(
                                    padding: EdgeInsets.all(3.h),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                ImageConstant.imgRotateMeTo0),
                                            fit: BoxFit.cover)),
                                    child: Container(
                                        height: 135.v,
                                        width: 62.h,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15.h, vertical: 46.v),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: fs.Svg(
                                                    ImageConstant.imgGroup135),
                                                fit: BoxFit.cover)),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgVectorOnerrorcontainer42x25,
                                                  height: 42.v,
                                                  width: 25.h,
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  margin: EdgeInsets.only(
                                                      left: 1.h)),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgSettings,
                                                  height: 25.v,
                                                  width: 32.h,
                                                  alignment: Alignment.center)
                                            ])))
                              ])),
                      Spacer(flex: 63),
                      CustomElevatedButton(
                          text: "Continue",
                          buttonStyle: CustomButtonStyles.none,
                          decoration: CustomButtonStyles
                              .gradientIndigoAToPrimaryDecoration,
                          onPressed: () {
                            onTapContinue(context);
                          })
                    ]))));
  }

  /// Navigates to the dashboardContainerScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardContainerScreen);
  }
}
