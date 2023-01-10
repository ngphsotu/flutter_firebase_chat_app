import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'index.dart';
import '/common/values/values.dart';
import '/common/widgets/widgets.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            buildLogo(),
            const Spacer(),
            buildThirdPartyLogin(),
          ],
        ),
      ),
    );
  }
}

Widget buildLogo() {
  return Container(
    width: 110.w,
    margin: EdgeInsets.only(top: 84.h),
    child: Column(
      children: [
        Container(
          width: 76.w,
          height: 76.w,
          margin: EdgeInsets.symmetric(horizontal: 15.w),
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: 76.w,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryBackground,
                    boxShadow: [Shadows.primaryShadow],
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                  ),
                ),
              ),
              Positioned(
                child: Image.asset(
                  'assets/images/ic_launcher.png',
                  fit: BoxFit.cover,
                  width: 76.w,
                  height: 76.w,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15.h, bottom: 15.h),
          child: Text(
            'Let\'s chat',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.thirdElement,
              height: 1,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildThirdPartyLogin() {
  return Container(
    width: 295.w,
    margin: EdgeInsets.only(bottom: 200.h),
    child: Column(
      children: [
        Text(
          'Sign in with social networks',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.primaryText,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 30.h, left: 50.w, right: 50.w),
          child: btnFlatButtonWidget(
            onPressed: () {
              SignInController().handleSignIn();
            },
            width: 200.w,
            height: 55.h,
            title: 'Google Login',
          ),
        ),
      ],
    ),
  );
}
