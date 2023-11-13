import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_go_task/core/shared_widget/custom_app_bar.dart';
import 'package:hotel_go_task/core/ui_resourses/color_manager.dart';
import 'package:hotel_go_task/core/ui_resourses/values_manager.dart';

import '../../core/routes_manger/routes_manager.dart';
import '../../core/ui_resourses/assets_manager.dart';
import '../../core/ui_resourses/constants_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

Timer? _timer;

class _SplashScreenState extends State<SplashScreen> {
  void _goNext() {
    Navigator.pushReplacementNamed(context, Routes.homeRoute);
  }

  _startDelay() {
    _timer = Timer(const Duration(seconds: AppConstants.splashDelay), _goNext);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: CustomAppBar(
          backGroundColor: ColorManager.white,
          title: Text(''),
          toolBarHeight: AppSize.s30.h,
          isLeading: false,
          statusBarColor: ColorManager.white),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              fit: BoxFit.fitWidth,
              height: 200,
              width: 200,
              image: AssetImage(
                ImageAssets.splashBackGround,
              ),
            ),
            // Center(
            //   child: Image(
            //     fit: BoxFit.cover,
            //     height: 115.h,
            //     width: 235.w,
            //     image: const AssetImage(
            //       ImageAssets.splashLogoWhitex3,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }
}
