import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: theme.colorScheme.onErrorContainer.withOpacity(1),
                  borderRadius: BorderRadius.circular(8.h),
                  border: Border.all(
                    color: appTheme.blueGray100,
                    width: 1.h,
                  ),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green500,
        borderRadius: BorderRadius.circular(6.h),
      );
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: appTheme.indigoA70001,
        borderRadius: BorderRadius.circular(6.h),
      );
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.gray800,
        borderRadius: BorderRadius.circular(4.h),
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
  static BoxDecoration get outlineBlackTL4 => BoxDecoration(
        color: appTheme.gray900,
        borderRadius: BorderRadius.circular(4.h),
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
  static BoxDecoration get fillIndigoATL29 => BoxDecoration(
        color: appTheme.indigoA70001,
        borderRadius: BorderRadius.circular(29.h),
      );
  static BoxDecoration get outlineBlueGrayTL4 => BoxDecoration(
        color: appTheme.blueGray100,
        borderRadius: BorderRadius.circular(4.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray40014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              8,
              9,
            ),
          ),
        ],
      );
}
