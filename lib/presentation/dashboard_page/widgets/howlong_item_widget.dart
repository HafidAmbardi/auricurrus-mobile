import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class HowlongItemWidget extends StatelessWidget {
  HowlongItemWidget({
    Key? key,
    this.onTapBtnArrowImage,
  }) : super(
          key: key,
        );

  VoidCallback? onTapBtnArrowImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Container(
            height: 113.v,
            width: 117.h,
            margin: EdgeInsets.only(left: 1.h),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Opacity(
                    opacity: 0.9,
                    child: Text(
                      "Trip travelled",
                      style: CustomTextStyles.titleMediumPrimaryContainer_1,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "60",
                          style: CustomTextStyles.atkinsonHyperlegibleff231f20,
                        ),
                        TextSpan(
                          text: "km",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          SizedBox(
            width: 136.h,
            child: Divider(
              color: appTheme.blueGray100,
              indent: 3.h,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Opacity(
                  opacity: 0.9,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 13.v,
                      bottom: 11.v,
                    ),
                    child: Text(
                      "Trip list",
                      style: CustomTextStyles.bodyMediumPrimaryContainer_1,
                    ),
                  ),
                ),
                CustomIconButton(
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  decoration: IconButtonStyleHelper.fillIndigoA,
                  onTap: () {
                    onTapBtnArrowImage!.call();
                  },
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
