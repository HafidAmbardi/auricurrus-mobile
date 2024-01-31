import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:hafidomio_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingTwoScreen extends StatelessWidget {
  const OnboardingTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 42.v),
                child: Column(children: [
                  SvgPicture.asset(ImageConstant.imgUndrawByTheRoadReVvs7,
                      height: 225.v, width: 278.h),
                  SizedBox(height: 74.v),
                  Text("Enhancing Road Safety",
                      style: theme.textTheme.headlineSmall),
                  SizedBox(height: 13.v),
                  Container(
                      width: 294.h,
                      margin: EdgeInsets.symmetric(horizontal: 15.h),
                      child: Text(
                          "You can stay connected to your surroundings through sound detection, ensuring a secure and enjoyable driving experience.",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLargePrimaryContainer
                              .copyWith(height: 1.50))),
                  SizedBox(height: 65.v),
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
                        value: 0.67, backgroundColor: appTheme.gray30001)))),
        actions: [
          AppbarSubtitleTwo(
              text: "Skip",
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 17.v))
        ]);
  }

  /// Navigates to the onboardingThreeScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardingThreeScreen);
  }
}
