import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerticalGap extends StatelessWidget {
  double gap;

  VerticalGap({super.key, this.gap = 10});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: gap.h,
    );
  }
}

class HorizontalGap extends StatelessWidget {
  double gap;

  HorizontalGap({super.key, this.gap = 10});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: gap.w,
    );
  }
}
