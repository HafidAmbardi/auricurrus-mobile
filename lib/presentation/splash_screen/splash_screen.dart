import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.78, 0.12),
              end: Alignment(0.5, 0.57),
              colors: [
                theme.colorScheme.primary,
                appTheme.indigoA70001,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(top: 217.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLogoOnerrorcontainer,
                  height: 106.v,
                  width: 136.h,
                ),
                SizedBox(height: 23.v),
                Text(
                  "Auricurrus",
                  style: CustomTextStyles.headlineSmallOnErrorContainer,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
