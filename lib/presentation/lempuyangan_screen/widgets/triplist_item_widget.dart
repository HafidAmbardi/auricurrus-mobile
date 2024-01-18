import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class TriplistItemWidget extends StatelessWidget {
  TriplistItemWidget({
    Key? key,
    this.onTapTripList,
  }) : super(
          key: key,
        );

  VoidCallback? onTapTripList;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapTripList!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          children: [
            Container(
              height: 42.adaptSize,
              width: 42.adaptSize,
              margin: EdgeInsets.only(bottom: 1.v),
              padding: EdgeInsets.all(5.h),
              decoration: AppDecoration.outlineGray300.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgThumbsUpIndigoA70001,
                height: 30.adaptSize,
                width: 30.adaptSize,
                alignment: Alignment.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 11.h,
                top: 11.v,
                bottom: 9.v,
              ),
              child: Text(
                "Lempuyangan Station",
                style: CustomTextStyles.titleMediumOnError,
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgVectorOnerror,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                top: 8.v,
                right: 6.h,
                bottom: 9.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
