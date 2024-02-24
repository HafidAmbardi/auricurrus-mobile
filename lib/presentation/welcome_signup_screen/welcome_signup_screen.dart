import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/backend/controllers/db-service.dart';
import 'package:hafidomio_s_application2/backend/model/user.dart';
import 'package:hafidomio_s_application2/backend/providers/auth_provider.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WelcomeSignupScreen extends HookConsumerWidget {
  WelcomeSignupScreen({Key? key}) : super(key: key);

  dbUser? user;
  String? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dbService _service = dbService();
    final authState = ref.watch(authStateProvider);
    final User? authenticatedUser = authState.value;

    String? userEmail = authenticatedUser?.email;
    String? userUID = authenticatedUser?.uid;
    debugPrint("userEmail" + userEmail.toString());
    debugPrint("userUID" + userUID.toString());

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (authenticatedUser == null) {
        // Navigate to the login page if not authenticated
        // Navigator.pushReplacementNamed(context, AppRoutes.login);
        Navigator.popAndPushNamed(context, AppRoutes.login);
        return;
      }
    });

    if (authenticatedUser == null) {
      return SizedBox.shrink(); // or return Container() based on your UI requirements
    }

    return StreamBuilder<QuerySnapshot>(
      stream: _service.getUsers(),
      builder: (context, snapshot) {
         List users = snapshot.data?.docs ?? [];
        if (users.isEmpty) {
          return const Center(
              );
        }
        debugPrint(users.toString());

        for (var userData in users) {
          if (userData.data()["email"] == userEmail) {
            user = userData.data();
            id = userData.id;
            break;
          }
        }

        debugPrint('welcome, ' + user!.name);
        debugPrint("ID detected  " + id!);

             return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 70.v),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 19.v),
                  SvgPicture.asset(ImageConstant.imgUndrawWinnersReWr1l,
                      height: 272.v, width: 270.h),
                  SizedBox(height: 47.v),
                  Container(
                      width: 307.h,
                      margin: EdgeInsets.only(left: 7.h, right: 10.h),
                      child: Text("Welcome $userEmail",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineSmall!
                              .copyWith(height: 1.20))),
                  SizedBox(height: 11.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 30.h),
                          child: Text("Thank you for signing up with us!",
                              style:
                                  CustomTextStyles.bodyLargePrimaryContainer))),
                  Spacer(),
                  CustomElevatedButton(
                    text: "Continue",
                    buttonStyle: CustomButtonStyles.none,
                    decoration:
                        CustomButtonStyles.gradientIndigoAToPrimaryDecoration,
                    onPressed: () {
                      onTapContinue(context, user, id);
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Navigates to the personalScreen when the action is triggered.
  onTapContinue(BuildContext context, dbUser? user, String? id) {
    Navigator.pushNamed(
      context,
      AppRoutes.personalScreen,
      arguments: {'user': user, 'id': id},
    );
  }
}