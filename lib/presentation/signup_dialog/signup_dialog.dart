import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore_for_file: must_be_immutable
class SignupDialog extends StatelessWidget {
  const SignupDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 324.h,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.outlineBluegray1002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: SvgPicture.asset(
              ImageConstant.imgSettings,
              height: 22.v,
              width: 28.h,
            ),
            alignment: Alignment.center,
          ),
          SizedBox(height: 15.v),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Choose an account",
              style: CustomTextStyles.titleMediumPrimaryContainer_2,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "to continue to Auricurrus",
              style: CustomTextStyles.bodyMediumPrimaryContainer,
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 83.h,
            ),
            child: Row(
              children: [
                Container(
                  child: CustomImageView(
                    imagePath: ImageConstant.imgEllipse6355,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    radius: BorderRadius.circular(
                      16.h,
                    ),
                    margin: EdgeInsets.symmetric(vertical: 2.v),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Josephine",
                          style: CustomTextStyles.titleSmallPrimaryContainer,
                        ),
                        Text(
                          "josephine341@gmail.com",
                          style: CustomTextStyles.bodyMediumPrimaryContainer,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Divider(
            color: appTheme.blueGray100,
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSettingsOnerror,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 6.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "Add another account",
                    style: CustomTextStyles.titleSmallPrimaryContainer,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Divider(
            color: appTheme.blueGray100,
          ),
          SizedBox(height: 15.v),
          Container(
            width: 262.h,
            margin: EdgeInsets.only(
              left: 1.h,
              right: 26.h,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        "To continue, Google will share your name, email address, and profile picture with Auriuccurs. Before using this app, review\nits ",
                    style: CustomTextStyles.bodyMediumff231f20,
                  ),
                  TextSpan(
                    text: "privacy policy",
                    style: CustomTextStyles.titleSmallff362fd9,
                  ),
                  TextSpan(
                    text: " and ",
                    style: CustomTextStyles.bodyMediumff231f20,
                  ),
                  TextSpan(
                    text: "terms of service",
                    style: CustomTextStyles.titleSmallff362fd9,
                  ),
                  TextSpan(
                    text: ".",
                    style: CustomTextStyles.bodyMediumff231f20,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
