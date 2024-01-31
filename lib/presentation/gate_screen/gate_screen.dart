import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:hafidomio_s_application2/widgets/custom_elevated_button.dart';
import 'package:hafidomio_s_application2/presentation/signup_dialog/signup_dialog.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GateScreen extends StatelessWidget {
  const GateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 70.v),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  SizedBox(height: 76.v),
                  SvgPicture.asset(ImageConstant.imgLogo,
                      height: 106.v, width: 136.h),
                  SizedBox(height: 26.v),
                  Text("Hear Everywhere", style: theme.textTheme.headlineSmall),
                  Spacer(),
                  CustomElevatedButton(
                      text: "Get in as Josephine",
                      rightIcon: Container(
                          margin: EdgeInsets.only(left: 30.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.h)),
                          child: SvgPicture.asset(ImageConstant.imgArrowleft,
                              height: 24.adaptSize, width: 24.adaptSize)),
                      buttonStyle: CustomButtonStyles.none,
                      decoration: CustomButtonStyles
                          .gradientIndigoAToPrimaryDecoration),
                  SizedBox(height: 12.v),
                  CustomElevatedButton(
                      text: "Sign-Up with Google",
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 10.h),
                          child: SvgPicture.asset(ImageConstant.imgGoogle,
                              height: 25.adaptSize, width: 25.adaptSize)),
                      buttonStyle: CustomButtonStyles.none,
                      decoration:
                          CustomButtonStyles.gradientGrayToGrayDecoration,
                      onPressed: () {
                        onTapSignUpWithGoogle(context);
                      })
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(actions: [
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 11.v),
          child: Column(children: [
            Row(children: [
              AppbarTrailingImage(
                  imagePath: ImageConstant.imgShapeIndigoA70001),
              AppbarTrailingImage(
                  imagePath: ImageConstant.imgShapePrimarycontainer,
                  margin: EdgeInsets.only(left: 21.h))
            ]),
            SizedBox(height: 11.v),
            AppbarTrailingImage(
                imagePath: ImageConstant.imgShapeIndigoA70001,
                margin: EdgeInsets.only(left: 22.h))
          ]))
    ]);
  }

  /// Displays a dialog with the [SignupDialog] content.
  onTapSignUpWithGoogle(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: SignupDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
