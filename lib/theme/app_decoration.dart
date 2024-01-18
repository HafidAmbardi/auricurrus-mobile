import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray10001,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray900.withOpacity(0.92),
      );
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: appTheme.indigoA70001,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );

  // Gradient decorations
  static BoxDecoration get gradientPrimaryToIndigoA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.78, 0.12),
          end: Alignment(0.5, 0.57),
          colors: [
            theme.colorScheme.primary,
            appTheme.indigoA70001,
          ],
        ),
      );

  // Linear decorations
  static BoxDecoration get linear => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.03, 0.25),
          end: Alignment(0.97, 0.83),
          colors: [
            appTheme.indigoA70001,
            theme.colorScheme.primary,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.gray800,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: appTheme.gray900,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray40014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              14,
              17,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray100 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray40014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              14,
              17,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray1001 => BoxDecoration(
        color: appTheme.indigoA700,
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray40014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              14,
              17,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray1002 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray40014 => BoxDecoration();
  static BoxDecoration get outlineBluegray400141 => BoxDecoration(
        color: appTheme.lightGreenA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray40014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              14,
              17,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray400142 => BoxDecoration(
        color: appTheme.indigoA70001,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray40014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              14,
              17,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray40014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              14,
              17,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        color: appTheme.indigoA70001.withOpacity(0.1),
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray40014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              8.21,
              9.97,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray3001 => BoxDecoration(
        color: appTheme.blueGray100,
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray40014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              8.21,
              9.97,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimaryContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -0.35,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primaryContainer,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder13 => BorderRadius.circular(
        13.h,
      );
  static BorderRadius get circleBorder16 => BorderRadius.circular(
        16.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL24 => BorderRadius.horizontal(
        left: Radius.circular(24.h),
      );
  static BorderRadius get customBorderTL8 => BorderRadius.vertical(
        top: Radius.circular(8.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
