import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class TriptravelledgridItemWidget extends StatelessWidget {
  const TriptravelledgridItemWidget({Key? key})
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
        height: 211.v,
        width: 155.h,
        padding: EdgeInsets.symmetric(
          horizontal: 9.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.outlineBluegray100.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 18.v),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "30",
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
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                  right: 21.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                              "12-1-2023",
                              style: CustomTextStyles
                                  .titleMediumPrimaryContainer_1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 78.v),
                    SizedBox(
                      height: 79.v,
                      width: 112.h,
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: SizedBox(
                                height: 49.v,
                                child: VerticalDivider(
                                  width: 1.h,
                                  thickness: 1.v,
                                  color: appTheme.indigoA70001,
                                  indent: 16.h,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgLocationIndigoA70001,
                            height: 15.adaptSize,
                            width: 15.adaptSize,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(top: 2.v),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: SizedBox(
                              width: 92.h,
                              child: Text(
                                "Condongcatur, Yogyakarta",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyMediumOnError,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgIcon,
                                  height: 15.v,
                                  width: 12.h,
                                  margin: EdgeInsets.only(
                                    top: 2.v,
                                    bottom: 20.v,
                                  ),
                                ),
                                Container(
                                  width: 71.h,
                                  margin: EdgeInsets.only(left: 7.h),
                                  child: Text(
                                    "Demangan, Yogyakarta",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.bodyMediumGray700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
