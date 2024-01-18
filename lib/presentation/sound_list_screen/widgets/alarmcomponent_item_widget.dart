import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class AlarmcomponentItemWidget extends StatelessWidget {
  const AlarmcomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: theme.colorScheme.onErrorContainer.withOpacity(1),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.blueGray100,
          width: 1.h,
        ),
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Container(
        height: 158.v,
        width: 155.h,
        padding: EdgeInsets.symmetric(
          horizontal: 9.h,
          vertical: 14.v,
        ),
        decoration: AppDecoration.outlineBluegray100.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "30",
                      style: CustomTextStyles.atkinsonHyperlegibleff231f20,
                    ),
                    TextSpan(
                      text: "dB",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                  right: 46.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgClock,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        Opacity(
                          opacity: 0.9,
                          child: Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "Alarm",
                              style: CustomTextStyles
                                  .titleMediumPrimaryContainer_1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 78.v),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Opacity(
                          opacity: 0.9,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 2.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "Level:",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ),
                        CustomElevatedButton(
                          height: 26.v,
                          width: 45.h,
                          text: "Mild",
                          margin: EdgeInsets.only(left: 6.h),
                          buttonStyle: CustomButtonStyles.outlineBlueGray,
                          buttonTextStyle: theme.textTheme.titleSmall!,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
