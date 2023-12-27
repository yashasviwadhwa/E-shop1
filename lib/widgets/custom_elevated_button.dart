import 'package:e_shop/utils/app_color.dart';
import 'package:e_shop/widgets/text_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    required this.onTab,
    required this.text,
    this.buttonBackGround,
    this.borderColor,
    this.textColor,
    this.textStyle,
    this.padding,
    this.fontWeight,
    this.fontSize,
    this.borderRadius,
    super.key,
  });

  final String text;
  final EdgeInsetsGeometry? padding;
  final void Function() onTab;
  final TextStyle? textStyle;
  final Color? buttonBackGround;
  final Color? borderColor;
  final Color? textColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      autofocus: true,
      onPressed: onTab,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            borderRadius?.r ?? 30.0.r,
          ),
        ),
        side: BorderSide(
          color: borderColor ?? AppColor.color984997,
        ),
        backgroundColor: buttonBackGround ?? AppColor.color984997,
        padding: padding ?? EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
      ),
      child: TextDesign(text: text, fontWeight: fontWeight, fontSize: fontSize, color: textColor,),
    );
  }
}
