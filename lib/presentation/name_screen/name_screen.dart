import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:hafidomio_s_application2/widgets/custom_elevated_button.dart';
import 'package:hafidomio_s_application2/widgets/custom_icon_button.dart';
import 'package:hafidomio_s_application2/widgets/custom_text_form_field.dart';

class NameScreen extends StatelessWidget {
  NameScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "We need to know you",
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 5.v),
                Container(
                  width: 297.h,
                  margin: EdgeInsets.symmetric(horizontal: 38.h),
                  child: Text(
                    "Let us know how we call you and we got this!",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style:
                        CustomTextStyles.bodyLargePrimaryContainer_1.copyWith(
                      height: 1.40,
                    ),
                  ),
                ),
                SizedBox(height: 14.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.h),
                    child: Text(
                      "Nickname",
                      style: CustomTextStyles.titleMediumPrimaryContainer,
                    ),
                  ),
                ),
                SizedBox(height: 7.v),
                Opacity(
                  opacity: 0.8,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.h),
                    child: CustomTextFormField(
                      controller: nameController,
                      hintText: "Enter your nickname",
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                ),
                SizedBox(height: 354.v),
                CustomElevatedButton(
                  text: "Continue",
                  margin: EdgeInsets.only(
                    left: 24.h,
                    right: 25.h,
                  ),
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientGrayToGrayTL8Decoration,
                ),
                SizedBox(height: 73.v),
                _buildIosAlphabeticKeyboard(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Container(
          height: 6.v,
          width: 252.h,
          decoration: BoxDecoration(
            color: appTheme.gray30001,
            borderRadius: BorderRadius.circular(
              3.h,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              3.h,
            ),
            child: LinearProgressIndicator(
              value: 0.5,
              backgroundColor: appTheme.gray30001,
            ),
          ),
        ),
      ),
      actions: [
        AppbarSubtitleTwo(
          text: "Skip",
          margin: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 17.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildIosAlphabeticKeyboard(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 5.v),
          decoration: AppDecoration.fillGray,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 12.v,
                  bottom: 2.v,
                ),
                child: Text(
                  "Suggest",
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeSFProTextOnErrorContainer_1,
                ),
              ),
              SizedBox(
                height: 34.v,
                child: VerticalDivider(
                  width: 1.h,
                  thickness: 1.v,
                  indent: 10.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 12.v,
                  bottom: 2.v,
                ),
                child: Text(
                  "Suggest",
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeSFProTextOnErrorContainer_1,
                ),
              ),
              SizedBox(
                height: 34.v,
                child: VerticalDivider(
                  width: 1.h,
                  thickness: 1.v,
                  indent: 10.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 12.v,
                  bottom: 2.v,
                ),
                child: Text(
                  "Suggest",
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeSFProTextOnErrorContainer_1,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 220.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 3.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.fillGray,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 32.h,
                          padding: EdgeInsets.all(7.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "Q",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Container(
                          width: 32.h,
                          margin: EdgeInsets.only(left: 5.h),
                          padding: EdgeInsets.all(7.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "W",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Container(
                          width: 32.h,
                          margin: EdgeInsets.only(left: 5.h),
                          padding: EdgeInsets.all(7.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "E",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Container(
                          width: 32.h,
                          margin: EdgeInsets.only(left: 5.h),
                          padding: EdgeInsets.all(7.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "R",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Container(
                          width: 32.h,
                          margin: EdgeInsets.only(left: 5.h),
                          padding: EdgeInsets.all(7.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "T",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Container(
                          width: 32.h,
                          margin: EdgeInsets.only(left: 5.h),
                          padding: EdgeInsets.all(7.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "Y",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Container(
                          width: 32.h,
                          margin: EdgeInsets.only(left: 5.h),
                          padding: EdgeInsets.all(7.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "U",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Container(
                          width: 32.h,
                          margin: EdgeInsets.only(left: 5.h),
                          padding: EdgeInsets.all(7.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "I",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Container(
                          width: 32.h,
                          margin: EdgeInsets.only(left: 5.h),
                          padding: EdgeInsets.all(7.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "O",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Container(
                          width: 32.h,
                          margin: EdgeInsets.only(left: 5.h),
                          padding: EdgeInsets.all(7.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "P",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 32.h,
                            padding: EdgeInsets.all(7.h),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "A",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          Container(
                            width: 32.h,
                            margin: EdgeInsets.only(left: 5.h),
                            padding: EdgeInsets.all(7.h),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "S",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          Container(
                            width: 32.h,
                            margin: EdgeInsets.only(left: 4.h),
                            padding: EdgeInsets.all(7.h),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "D",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          Container(
                            width: 32.h,
                            margin: EdgeInsets.only(left: 5.h),
                            padding: EdgeInsets.all(7.h),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "F",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          Container(
                            width: 32.h,
                            margin: EdgeInsets.only(left: 4.h),
                            padding: EdgeInsets.all(7.h),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "G",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          Container(
                            width: 32.h,
                            margin: EdgeInsets.only(left: 5.h),
                            padding: EdgeInsets.all(7.h),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "H",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          Container(
                            width: 32.h,
                            margin: EdgeInsets.only(left: 4.h),
                            padding: EdgeInsets.all(7.h),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "J",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          Container(
                            width: 32.h,
                            margin: EdgeInsets.only(left: 5.h),
                            padding: EdgeInsets.all(7.h),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "K",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          Container(
                            width: 32.h,
                            margin: EdgeInsets.only(left: 4.h),
                            padding: EdgeInsets.all(7.h),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "L",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 66.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 87.h,
                          padding: EdgeInsets.all(11.h),
                          decoration: AppDecoration.outlineBlack900.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "123",
                            style: CustomTextStyles
                                .bodyLargeSFProTextOnErrorContainer,
                          ),
                        ),
                        Container(
                          width: 182.h,
                          margin: EdgeInsets.only(left: 6.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 11.h,
                            vertical: 10.v,
                          ),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "space",
                            style: CustomTextStyles
                                .bodyLargeSFProTextOnErrorContainer,
                          ),
                        ),
                        Container(
                          width: 88.h,
                          margin: EdgeInsets.only(left: 6.h),
                          padding: EdgeInsets.all(11.h),
                          decoration: AppDecoration.outlineBlack900.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "Go",
                            style: CustomTextStyles
                                .bodyLargeSFProTextOnErrorContainer,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 54.v),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 42.adaptSize,
                        width: 42.adaptSize,
                        padding: EdgeInsets.all(11.h),
                        decoration: IconButtonStyleHelper.outlineBlack,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgHome,
                        ),
                      ),
                      Container(
                        width: 257.h,
                        margin: EdgeInsets.only(left: 14.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 32.h,
                              padding: EdgeInsets.all(7.h),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "Z",
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            Container(
                              width: 32.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.all(7.h),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "X",
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            Container(
                              width: 32.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.all(7.h),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "C",
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            Container(
                              width: 32.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.all(7.h),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "V",
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            Container(
                              width: 32.h,
                              margin: EdgeInsets.only(left: 4.h),
                              padding: EdgeInsets.all(7.h),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "B",
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            Container(
                              width: 32.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.all(7.h),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "N",
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            Container(
                              width: 32.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.all(7.h),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "M",
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 14.h),
                        child: CustomIconButton(
                          height: 42.adaptSize,
                          width: 42.adaptSize,
                          padding: EdgeInsets.all(11.h),
                          decoration: IconButtonStyleHelper.outlineBlackTL4,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgHome,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
