// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../ui_resourses/color_manager.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
      {Key? key,
      required this.backGroundColor,
      required this.title,
      // this.routeName,
      required this.toolBarHeight,
      required this.isLeading,
      required this.statusBarColor,
      this.actions,
      this.statusBarIconBrightness = Brightness.dark,
      this.flexibleSpace,
      this.bottomWidget,
      this.leadingIconColor = Colors.black})
      : super(key: key);

  final Color backGroundColor;
  final Color statusBarColor;
  Color leadingIconColor;
  final Widget title;
  // String? routeName;
  final double toolBarHeight;
  final bool isLeading;
  PreferredSize? bottomWidget;
  List<Widget>? actions;
  Widget? flexibleSpace;
  Brightness statusBarIconBrightness;
  @override
  Size get preferredSize => Size.fromHeight(toolBarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: statusBarIconBrightness,
        statusBarColor: statusBarColor,
      ),
      scrolledUnderElevation: 0.0,
      surfaceTintColor: ColorManager.transparent,
      title: title,
      leading: isLeading
          ? InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: leadingIconColor,
                size: 15.w,
              ),
            )
          : null,
      toolbarHeight: toolBarHeight,
      centerTitle: true,
      elevation: 0.0,
      flexibleSpace: flexibleSpace,
      backgroundColor: backGroundColor,
      actions: actions,
      bottom: bottomWidget,
    );
  }
}
