import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.indigoA70001,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 52.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200.h,
                margin: EdgeInsets.symmetric(horizontal: 34.h),
                child: Text(
                  "Lets started with Personalization",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style:
                      CustomTextStyles.headlineSmallOnErrorContainer.copyWith(
                    height: 1.20,
                  ),
                ),
              ),
              SizedBox(height: 15.v),
              SizedBox(
                width: 269.h,
                child: Text(
                  "Lets prepare what you need to start your journey",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeOnErrorContainer.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
