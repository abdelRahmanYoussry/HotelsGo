import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_go_task/core/ui_resourses/styles_manager.dart';
import 'package:hotel_go_task/core/ui_resourses/values_manager.dart';

import 'color_manager.dart';
import 'font_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    useMaterial3: true,
    // main colors
    primaryColor: ColorManager.primary,
    primarySwatch: Colors.blue,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,

    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary,
    scaffoldBackgroundColor: Colors.white.withOpacity(0.95),
    highlightColor: ColorManager.primary.withOpacity(0.5),
    splashFactory: InkSplash.splashFactory,
    // ripple effect color
    // cardview theme
    cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s4),
    // app bar theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s0,
        shadowColor: ColorManager.lightPrimary,
        titleTextStyle:
            getRegularStyle(fontSize: FontSize.s16, color: ColorManager.white)),
    // button theme
    buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManager.grey1,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.lightPrimary),

    // elevated button them
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: getRegularStyle(
                color: ColorManager.white, fontSize: FontSize.s17),
            backgroundColor: ColorManager.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s12)))),
    textTheme: TextTheme(
        displayLarge: getMediumStyle(
            color: ColorManager.primary, fontSize: FontSize.s18.sp),
        headlineLarge: getSemiBoldStyle(
            color: ColorManager.textBlack, fontSize: FontSize.s18.sp),
        headlineMedium: getMediumStyle(
            color: ColorManager.textBlack2, fontSize: FontSize.s16.sp),
        headlineSmall: getRegularStyle(
            color: ColorManager.textBlack2, fontSize: FontSize.s12.sp),
        titleMedium:
            getBoldStyle(color: ColorManager.black, fontSize: FontSize.s14.sp),
        displayMedium: getSemiBoldStyle(
            color: ColorManager.white, fontSize: FontSize.s16.sp),
        labelLarge: getMediumStyle(
            color: ColorManager.textBlack, fontSize: FontSize.s16.sp),
        titleSmall: getRegularStyle(
            color: ColorManager.white, fontSize: FontSize.s14.sp),
        bodyLarge: getRegularStyle(
            color: ColorManager.white, fontSize: FontSize.s24.sp),
        bodySmall: getRegularStyle(
            color: ColorManager.grey, fontSize: FontSize.s14.sp),
        bodyMedium: getRegularStyle(
            color: ColorManager.grey1, fontSize: FontSize.s16.sp),
        labelSmall: getMediumStyle(
            color: ColorManager.primary, fontSize: FontSize.s14.sp),
        labelMedium: getRegularStyle(
            color: ColorManager.labelTitle, fontSize: FontSize.s16.sp),
        titleLarge: getRegularStyle(
            color: ColorManager.onBoardingTitle, fontSize: 28.sp),
        displaySmall:
            getMediumStyle(color: ColorManager.textBlack, fontSize: 14.sp)),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
        // content padding
        contentPadding: const EdgeInsets.all(AppPadding.p8),

        // hint style
        hintStyle:
            getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s14),
        labelStyle:
            getMediumStyle(color: ColorManager.grey, fontSize: FontSize.s14),
        errorStyle: getRegularStyle(color: ColorManager.error),

        // enabled border style
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

        // focused border style
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

        // error border style
        errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.error, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
        // focused border style
        focusedErrorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)))),
    // hoverColor: Colors.green,
    // focusColor: Colors.green
    // label style
  );
}
