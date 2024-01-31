import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:hafidomio_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingOneScreen extends StatelessWidget {
  const OnboardingOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 24.v),
                child: Column(children: [
                  SvgPicture.asset(ImageConstant.imgUndrawWelcomingReX0qo,
                      height: 269.v, width: 236.h),
                  SizedBox(height: 48.v),
                  Container(
                      width: 288.h,
                      margin: EdgeInsets.symmetric(horizontal: 18.h),
                      child: Text("Welcome Aboard, Where Are You Going?",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineSmall!
                              .copyWith(height: 1.20))),
                  SizedBox(height: 9.v),
                  Container(
                      width: 283.h,
                      margin: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Text(
                          "Empowering you with information to make informed decisions on the road",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLargePrimaryContainer
                              .copyWith(height: 1.50))),
                  SizedBox(height: 87.v),
                  CustomElevatedButton(
                      text: "Next",
                      buttonStyle: CustomButtonStyles.none,
                      decoration:
                          CustomButtonStyles.gradientIndigoAToPrimaryDecoration,
                      onPressed: () {
                        onTapNext(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: Padding(
            padding: EdgeInsets.only(left: 25.h),
            child: Container(
                height: 6.v,
                width: 252.h,
                decoration: BoxDecoration(
                    color: appTheme.gray30001,
                    borderRadius: BorderRadius.circular(3.h)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(3.h),
                    child: LinearProgressIndicator(
                        value: 0.43, backgroundColor: appTheme.gray30001)))),
        actions: [
          AppbarSubtitleTwo(
              text: "Skip",
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 17.v))
        ]);
  }

  /// Navigates to the onboardingTwoScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardingTwoScreen);
  }
}
