import 'dart:ui';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Gradient button style
  static BoxDecoration get gradientGrayToGrayDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.07, 0),
          end: Alignment(0.97, 0),
          colors: [
            appTheme.gray90001,
            appTheme.gray70001,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToGrayTL8Decoration => BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.secondaryContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.07, 0),
          end: Alignment(0.97, 0),
          colors: [
            appTheme.gray90001,
            appTheme.gray70001,
          ],
        ),
      );
  static BoxDecoration get gradientIndigoAToPrimaryDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.secondaryContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.19, 0),
          end: Alignment(0.89, 0),
          colors: [
            appTheme.indigoA70001,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientIndigoAToPrimaryTL8Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.secondaryContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.03, 0),
          end: Alignment(0.97, 0),
          colors: [
            appTheme.indigoA70001,
            theme.colorScheme.primary,
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightGreenA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.h),
        ),
        shadowColor: appTheme.blueGray40014,
        elevation: 17,
      );
  static ButtonStyle get outlineBlueGrayTL13 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.amber900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.h),
        ),
        shadowColor: appTheme.blueGray40014,
        elevation: 17,
      );
  static ButtonStyle get outlineBlueGrayTL131 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.redA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.h),
        ),
        shadowColor: appTheme.blueGray40014,
        elevation: 17,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
