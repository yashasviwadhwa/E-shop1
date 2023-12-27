import 'package:e_shop/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextDesign extends StatelessWidget {
  String? text;
  double? fontSize;
  int? maxLines;
  Color? color;
  FontWeight? fontWeight;

  TextDesign(
      {Key? key,
      required this.text,
      this.fontSize,
      this.fontWeight,
      this.maxLines,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines ?? 100,
      style: GoogleFonts.lato(
        color: color ?? AppColor.colorText,
        fontWeight: fontWeight ?? FontWeight.w500,
        fontSize: fontSize?.sp ?? 16.sp,
      ),
    );
  }
}
