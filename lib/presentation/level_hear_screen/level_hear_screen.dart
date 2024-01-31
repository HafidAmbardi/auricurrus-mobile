import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:hafidomio_s_application2/widgets/custom_elevated_button.dart';
import 'package:hafidomio_s_application2/widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class LevelHearScreen extends StatelessWidget {
  LevelHearScreen({Key? key}) : super(key: key);

  String levelHear = "";

  List<String> radioList = [
    "msg_mild_20_40_db",
    "msg_moderate_41_60db",
    "msg_severe_61_80_db",
    "msg_profound_81_db"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(children: [
                  Container(
                      width: 295.h,
                      margin: EdgeInsets.only(left: 12.h, right: 18.h),
                      child: Text("How big the level of your hearing loss?",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineSmall)),
                  SizedBox(height: 3.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 298.h,
                          margin: EdgeInsets.only(left: 4.h, right: 23.h),
                          child: Text(
                              "So we can adjust the functionally of the App",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargePrimaryContainer
                                  .copyWith(height: 1.40)))),
                  SizedBox(height: 14.v),
                  _buildLevelHear(context),
                  SizedBox(height: 92.v),
                  CustomElevatedButton(
                      text: "Continue",
                      buttonStyle: CustomButtonStyles.none,
                      decoration:
                          CustomButtonStyles.gradientIndigoAToPrimaryDecoration,
                      onPressed: () {
                        onTapContinue(context);
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

  /// Section Widget
  Widget _buildLevelHear(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(top: 12.v),
              child: CustomRadioButton(
                  text: "Mild (20-40 dB)",
                  value: radioList[0],
                  groupValue: levelHear,
                  padding: EdgeInsets.fromLTRB(24.h, 25.v, 30.h, 25.v),
                  onChange: (value) {
                    levelHear = value;
                  })),
          Padding(
              padding: EdgeInsets.only(top: 12.v),
              child: CustomRadioButton(
                  text: "Moderate (41-60 dB)",
                  value: radioList[1],
                  groupValue: levelHear,
                  padding: EdgeInsets.fromLTRB(24.h, 25.v, 30.h, 25.v),
                  onChange: (value) {
                    levelHear = value;
                  })),
          Padding(
              padding: EdgeInsets.only(top: 12.v),
              child: CustomRadioButton(
                  text: "Severe (61-80 dB)",
                  value: radioList[2],
                  groupValue: levelHear,
                  padding: EdgeInsets.fromLTRB(24.h, 25.v, 30.h, 25.v),
                  onChange: (value) {
                    levelHear = value;
                  })),
          Padding(
              padding: EdgeInsets.only(top: 12.v),
              child: CustomRadioButton(
                  text: "Profound (>81 dB)",
                  value: radioList[3],
                  groupValue: levelHear,
                  padding: EdgeInsets.fromLTRB(24.h, 25.v, 30.h, 25.v),
                  onChange: (value) {
                    levelHear = value;
                  }))
        ]));
  }

  /// Navigates to the bluetoothScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bluetoothScreen);
  }
}
