import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomFloatingButton extends StatelessWidget {
  CustomFloatingButton({
    Key? key,
    this.alignment,
    this.backgroundColor,
    this.onTap,
    this.width,
    this.height,
    this.decoration,
    this.child,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final Color? backgroundColor;

  final VoidCallback? onTap;

  final double? width;

  final double? height;

  final BoxDecoration? decoration;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: fabWidget,
          )
        : fabWidget;
  }

  Widget get fabWidget => FloatingActionButton(
        backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1),
        onPressed: onTap,
        shape: CircleBorder(
          side: BorderSide(
            color: theme.colorScheme.primaryContainer
                .withOpacity(1), // Border color
            width: 2.0, // Border width
          ),
        ),
        child: Container(
            alignment: Alignment.center,
            width: 40.v,
            height: height ?? 0,
            decoration: decoration ??
                BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.colorScheme.errorContainer.withOpacity(1),
                ),
            child: child),
      );
}
