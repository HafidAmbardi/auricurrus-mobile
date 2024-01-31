import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:hafidomio_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingThreeScreen extends StatelessWidget {
  const OnboardingThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 55.v),
                child: Column(children: [
                  SvgPicture.asset(ImageConstant.imgUndrawPeopleRe8spw,
                      height: 195.v, width: 257.h),
                  SizedBox(height: 91.v),
                  Text("For the Deaf Community",
                      style: theme.textTheme.headlineSmall),
                  SizedBox(height: 13.v),
                  Container(
                      width: 273.h,
                      margin: EdgeInsets.symmetric(horizontal: 25.h),
                      child: Text(
                          "We assist bridges the gap by converting these important auditory signals into visual and tactile alerts",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLargePrimaryContainer
                              .copyWith(height: 1.50))),
                  SizedBox(height: 90.v),
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
                        value: 1, backgroundColor: appTheme.gray30001)))),
        actions: [
          AppbarSubtitleTwo(
              text: "Skip",
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 17.v))
        ]);
  }

  /// Navigates to the gateScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.gateScreen);
  }
}
