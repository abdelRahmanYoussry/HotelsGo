// ignore_for_file: file_names, must_be_immutable, use_key_in_widget_constructors

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../ui_resourses/color_manager.dart';
import '../ui_resourses/font_manager.dart';

class MyElevatedButton extends StatelessWidget {
  late double height;
  late double? width = double.infinity;
  double? borderWidth;
  late double? fontSize = 20.0.sp;
  double? radius;
  void Function()? onTap;
  IconData? icon;
  AssetImage? image;
  final Color buttonColor;
  Color? borderColor = Colors.black;
  Color? iconColor = Colors.black;
  late Color? textColor;
  final String buttonName;
  bool? condition;
  MyElevatedButton(
      {this.height = 45,
      this.width,
      required this.radius,
      this.fontSize,
      this.icon,
      this.image,
      required this.onTap,
      required this.buttonName,
      required this.buttonColor,
      this.textColor,
      this.condition = true,
      this.iconColor,
      required this.borderColor,
      required this.borderWidth});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ConditionalBuilder(
        builder: (context) => ElevatedButton(
            onPressed: onTap,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(buttonColor),
              side: MaterialStateProperty.all(
                  BorderSide(color: borderColor!, width: borderWidth!)),
              padding: MaterialStateProperty.all(EdgeInsets.zero),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius ?? 0),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Icon(
                      icon,
                      color: iconColor,
                    ),
                  ),
                if (image != null)
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image(
                      image: image!,
                      fit: BoxFit.cover,
                      width: 20,
                    ),
                  ),
                Text(
                  buttonName,
                  style: TextStyle(
                    fontWeight: FontWeightManager.regular,
                    fontSize: fontSize,
                    color: textColor,
                  ),
                ),
              ],
            )),
        fallback: (context) => Center(
          child: CircularProgressIndicator(
            color: ColorManager.primary,
          ),
        ),
        condition: condition!,
      ),
    );
  }
}
