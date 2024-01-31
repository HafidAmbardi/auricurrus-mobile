import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeSignupScreen extends StatelessWidget {
  const WelcomeSignupScreen({Key? key}) : super(key: key);

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
                      SizedBox(height: 19.v),
                      SvgPicture.asset(ImageConstant.imgUndrawWinnersReWr1l,
                          height: 272.v, width: 270.h),
                      SizedBox(height: 47.v),
                      Container(
                          width: 307.h,
                          margin: EdgeInsets.only(left: 7.h, right: 10.h),
                          child: Text("Welcome josephine341@gmail.com!",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.headlineSmall!
                                  .copyWith(height: 1.20))),
                      SizedBox(height: 11.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 30.h),
                              child: Text("Thank you for signing up with us!",
                                  style: CustomTextStyles
                                      .bodyLargePrimaryContainer))),
                      Spacer(),
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

  /// Navigates to the personalScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.personalScreen);
  }
}
