import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:hafidomio_s_application2/widgets/custom_elevated_button.dart';
import 'package:hafidomio_s_application2/widgets/custom_text_form_field.dart';

class NameOneScreen extends StatelessWidget {
  NameOneScreen({Key? key})
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
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  children: [
                    Text(
                      "We need to know you",
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 5.v),
                    Container(
                      width: 297.h,
                      margin: EdgeInsets.symmetric(horizontal: 14.h),
                      child: Text(
                        "Let us know how we call you and we got this!",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyLargePrimaryContainer_1
                            .copyWith(
                          height: 1.40,
                        ),
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Nickname",
                        style: CustomTextStyles.titleMediumPrimaryContainer,
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Opacity(
                      opacity: 0.8,
                      child: CustomTextFormField(
                        controller: nameController,
                        hintText: "Enter your nickname",
                        textInputAction: TextInputAction.done,
                      ),
                    ),
                    Spacer(),
                    SizedBox(height: 70.v),
                    CustomElevatedButton(
                      text: "Continue",
                      buttonStyle: CustomButtonStyles.none,
                      decoration:
                          CustomButtonStyles.gradientGrayToGrayTL8Decoration,
                    ),
                  ],
                ),
              ),
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
}
