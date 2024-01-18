import '../lempuyangan_screen/widgets/triplist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/widgets/custom_icon_button.dart';
import 'package:hafidomio_s_application2/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class LempuyanganScreen extends StatelessWidget {
  LempuyanganScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.h, vertical: 26.v),
                      decoration: AppDecoration.fillOnErrorContainer,
                      child: Column(children: [
                        CustomSearchView(
                            controller: searchController, hintText: "L"),
                        SizedBox(height: 24.v),
                        _buildTripList(context),
                        SizedBox(height: 24.v)
                      ])),
                  SizedBox(height: 5.v),
                  _buildIosAlphabeticKeyboard(context)
                ])))));
  }

  /// Section Widget
  Widget _buildTripList(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 6.v);
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return TriplistItemWidget(onTapTripList: () {
            onTapTripList(context);
          });
        });
  }

  /// Section Widget
  Widget _buildIosAlphabeticKeyboard(BuildContext context) {
    return Column(children: [
      Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 5.v),
          decoration: AppDecoration.fillGray,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 12.v, bottom: 2.v),
                    child: Text("Suggest",
                        textAlign: TextAlign.center,
                        style: CustomTextStyles
                            .bodyLargeSFProTextOnErrorContainer_1)),
                SizedBox(
                    height: 34.v,
                    child: VerticalDivider(
                        width: 1.h, thickness: 1.v, indent: 10.h)),
                Padding(
                    padding: EdgeInsets.only(top: 12.v, bottom: 2.v),
                    child: Text("Suggest",
                        textAlign: TextAlign.center,
                        style: CustomTextStyles
                            .bodyLargeSFProTextOnErrorContainer_1)),
                SizedBox(
                    height: 34.v,
                    child: VerticalDivider(
                        width: 1.h, thickness: 1.v, indent: 10.h)),
                Padding(
                    padding: EdgeInsets.only(top: 12.v, bottom: 2.v),
                    child: Text("Suggest",
                        textAlign: TextAlign.center,
                        style: CustomTextStyles
                            .bodyLargeSFProTextOnErrorContainer_1))
              ])),
      Container(
          height: 220.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 8.v),
          decoration: AppDecoration.fillGray,
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Align(
                alignment: Alignment.center,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                        width: 32.h,
                        padding: EdgeInsets.all(7.h),
                        decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4),
                        child: Text("Q", style: theme.textTheme.titleLarge)),
                    Container(
                        width: 32.h,
                        margin: EdgeInsets.only(left: 5.h),
                        padding: EdgeInsets.all(7.h),
                        decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4),
                        child: Text("W", style: theme.textTheme.titleLarge)),
                    Container(
                        width: 32.h,
                        margin: EdgeInsets.only(left: 5.h),
                        padding: EdgeInsets.all(7.h),
                        decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4),
                        child: Text("E", style: theme.textTheme.titleLarge)),
                    Container(
                        width: 32.h,
                        margin: EdgeInsets.only(left: 5.h),
                        padding: EdgeInsets.all(7.h),
                        decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4),
                        child: Text("R", style: theme.textTheme.titleLarge)),
                    Container(
                        width: 32.h,
                        margin: EdgeInsets.only(left: 5.h),
                        padding: EdgeInsets.all(7.h),
                        decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4),
                        child: Text("T", style: theme.textTheme.titleLarge)),
                    Container(
                        width: 32.h,
                        margin: EdgeInsets.only(left: 5.h),
                        padding: EdgeInsets.all(7.h),
                        decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4),
                        child: Text("Y", style: theme.textTheme.titleLarge)),
                    Container(
                        width: 32.h,
                        margin: EdgeInsets.only(left: 5.h),
                        padding: EdgeInsets.all(7.h),
                        decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4),
                        child: Text("U", style: theme.textTheme.titleLarge)),
                    Container(
                        width: 32.h,
                        margin: EdgeInsets.only(left: 5.h),
                        padding: EdgeInsets.all(7.h),
                        decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4),
                        child: Text("I", style: theme.textTheme.titleLarge)),
                    Container(
                        width: 32.h,
                        margin: EdgeInsets.only(left: 5.h),
                        padding: EdgeInsets.all(7.h),
                        decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4),
                        child: Text("O", style: theme.textTheme.titleLarge)),
                    Container(
                        width: 32.h,
                        margin: EdgeInsets.only(left: 5.h),
                        padding: EdgeInsets.all(7.h),
                        decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4),
                        child: Text("P", style: theme.textTheme.titleLarge))
                  ]),
                  SizedBox(height: 12.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: 32.h,
                                padding: EdgeInsets.all(7.h),
                                decoration: AppDecoration.outlineBlack.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder4),
                                child: Text("A",
                                    style: theme.textTheme.titleLarge)),
                            Container(
                                width: 32.h,
                                margin: EdgeInsets.only(left: 5.h),
                                padding: EdgeInsets.all(7.h),
                                decoration: AppDecoration.outlineBlack.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder4),
                                child: Text("S",
                                    style: theme.textTheme.titleLarge)),
                            Container(
                                width: 32.h,
                                margin: EdgeInsets.only(left: 4.h),
                                padding: EdgeInsets.all(7.h),
                                decoration: AppDecoration.outlineBlack.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder4),
                                child: Text("D",
                                    style: theme.textTheme.titleLarge)),
                            Container(
                                width: 32.h,
                                margin: EdgeInsets.only(left: 5.h),
                                padding: EdgeInsets.all(7.h),
                                decoration: AppDecoration.outlineBlack.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder4),
                                child: Text("F",
                                    style: theme.textTheme.titleLarge)),
                            Container(
                                width: 32.h,
                                margin: EdgeInsets.only(left: 4.h),
                                padding: EdgeInsets.all(7.h),
                                decoration: AppDecoration.outlineBlack.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder4),
                                child: Text("G",
                                    style: theme.textTheme.titleLarge)),
                            Container(
                                width: 32.h,
                                margin: EdgeInsets.only(left: 5.h),
                                padding: EdgeInsets.all(7.h),
                                decoration: AppDecoration.outlineBlack.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder4),
                                child: Text("H",
                                    style: theme.textTheme.titleLarge)),
                            Container(
                                width: 32.h,
                                margin: EdgeInsets.only(left: 4.h),
                                padding: EdgeInsets.all(7.h),
                                decoration: AppDecoration.outlineBlack.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder4),
                                child: Text("J",
                                    style: theme.textTheme.titleLarge)),
                            Container(
                                width: 32.h,
                                margin: EdgeInsets.only(left: 5.h),
                                padding: EdgeInsets.all(7.h),
                                decoration: AppDecoration.outlineBlack.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder4),
                                child: Text("K",
                                    style: theme.textTheme.titleLarge)),
                            Container(
                                width: 32.h,
                                margin: EdgeInsets.only(left: 4.h),
                                padding: EdgeInsets.all(7.h),
                                decoration: AppDecoration.outlineBlack.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder4),
                                child: Text("L",
                                    style: theme.textTheme.titleLarge))
                          ])),
                  SizedBox(height: 66.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                        width: 87.h,
                        padding: EdgeInsets.all(11.h),
                        decoration: AppDecoration.outlineBlack900.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4),
                        child: Text("123",
                            style: CustomTextStyles
                                .bodyLargeSFProTextOnErrorContainer)),
                    Container(
                        width: 182.h,
                        margin: EdgeInsets.only(left: 6.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 11.h, vertical: 10.v),
                        decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4),
                        child: Text("space",
                            style: CustomTextStyles
                                .bodyLargeSFProTextOnErrorContainer)),
                    Container(
                        width: 88.h,
                        margin: EdgeInsets.only(left: 6.h),
                        padding: EdgeInsets.all(11.h),
                        decoration: AppDecoration.outlineBlack900.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4),
                        child: Text("Go",
                            style: CustomTextStyles
                                .bodyLargeSFProTextOnErrorContainer))
                  ])
                ])),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                    padding: EdgeInsets.only(bottom: 54.v),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomIconButton(
                              height: 42.adaptSize,
                              width: 42.adaptSize,
                              padding: EdgeInsets.all(11.h),
                              decoration: IconButtonStyleHelper.outlineBlack,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgHome)),
                          Container(
                              width: 257.h,
                              margin: EdgeInsets.only(left: 14.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: 32.h,
                                        padding: EdgeInsets.all(7.h),
                                        decoration: AppDecoration.outlineBlack
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder4),
                                        child: Text("Z",
                                            style: theme.textTheme.titleLarge)),
                                    Container(
                                        width: 32.h,
                                        margin: EdgeInsets.only(left: 5.h),
                                        padding: EdgeInsets.all(7.h),
                                        decoration: AppDecoration.outlineBlack
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder4),
                                        child: Text("X",
                                            style: theme.textTheme.titleLarge)),
                                    Container(
                                        width: 32.h,
                                        margin: EdgeInsets.only(left: 5.h),
                                        padding: EdgeInsets.all(7.h),
                                        decoration: AppDecoration.outlineBlack
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder4),
                                        child: Text("C",
                                            style: theme.textTheme.titleLarge)),
                                    Container(
                                        width: 32.h,
                                        margin: EdgeInsets.only(left: 5.h),
                                        padding: EdgeInsets.all(7.h),
                                        decoration: AppDecoration.outlineBlack
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder4),
                                        child: Text("V",
                                            style: theme.textTheme.titleLarge)),
                                    Container(
                                        width: 32.h,
                                        margin: EdgeInsets.only(left: 4.h),
                                        padding: EdgeInsets.all(7.h),
                                        decoration: AppDecoration.outlineBlack
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder4),
                                        child: Text("B",
                                            style: theme.textTheme.titleLarge)),
                                    Container(
                                        width: 32.h,
                                        margin: EdgeInsets.only(left: 5.h),
                                        padding: EdgeInsets.all(7.h),
                                        decoration: AppDecoration.outlineBlack
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder4),
                                        child: Text("N",
                                            style: theme.textTheme.titleLarge)),
                                    Container(
                                        width: 32.h,
                                        margin: EdgeInsets.only(left: 5.h),
                                        padding: EdgeInsets.all(7.h),
                                        decoration: AppDecoration.outlineBlack
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder4),
                                        child: Text("M",
                                            style: theme.textTheme.titleLarge))
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(left: 14.h),
                              child: CustomIconButton(
                                  height: 42.adaptSize,
                                  width: 42.adaptSize,
                                  padding: EdgeInsets.all(11.h),
                                  decoration:
                                      IconButtonStyleHelper.outlineBlackTL4,
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgHome)))
                        ])))
          ]))
    ]);
  }

  /// Navigates to the locationScreen when the action is triggered.
  onTapTripList(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.locationScreen);
  }
}
