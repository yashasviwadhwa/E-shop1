import 'package:e_shop/utils/app_color.dart';
import 'package:e_shop/utils/app_string.dart';
import 'package:e_shop/widgets/custom_elevated_button.dart';
import 'package:e_shop/widgets/gap.dart';
import 'package:e_shop/widgets/text_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  Widget firstContainerForBackground() {
    return Container(
      width: double.infinity,
      height: 500.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColor.colorC06496.withOpacity(0.7),
            AppColor.colorC06496.withOpacity(0.6),
            AppColor.color984997.withOpacity(0.9),
          ],
          begin: Alignment.topCenter,
          end: Alignment.center,
        ),
      ),
    );
  }

  Widget secondContainerForLoginDetail() {
    return Container(
      margin: EdgeInsets.only(
        top: 150.h,
        left: 30.w,
        right: 30.w,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 30.w,
      ),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.colorWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Column(
        children: [
          VerticalGap(
            gap: 30.h,
          ),
          TextDesign(
            text: AppString.signIn,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
          VerticalGap(
            gap: 50.h,
          ),
          TextField(
            style: GoogleFonts.lato(
              color: AppColor.colorText,
            ),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
              labelText: AppString.email,
            ),
          ),
          VerticalGap(
            gap: 20.h,
          ),
          TextField(
            style: GoogleFonts.lato(
              color: AppColor.colorText,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
              labelText: AppString.password,
            ),
          ),
          VerticalGap(
            gap: 15.h,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              child: Text(
                AppString.forgetPassword,
                style: GoogleFonts.lato(
                  decoration: TextDecoration.underline,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColor.colorText,
                ),
              ),
            ),
          ),
          VerticalGap(
            gap: 30.h,
          ),
          CustomElevatedButton(
            onTab: () {},
            borderRadius: 10,
            text: AppString.signIn,
            textColor: AppColor.colorWhite,
          ),
          const Spacer(),
          socialLogin(),
        ],
      ),
    );
  }

  Widget socialLogin() {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 30.h,
      ),
      child: Column(
        children: [
          TextDesign(
            text: AppString.orContinueWith,
          ),
          VerticalGap(),
          IconButton(
              icon: const FaIcon(FontAwesomeIcons.google),
              onPressed: () {
                print("Pressed");
              }),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.colorLoginBackground,
      body: Stack(
        children: [
          firstContainerForBackground(),
          secondContainerForLoginDetail(),
        ],
      ),
    );
  }
}
