import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_65_qr_scanner/utils/extensions/sizedbox_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/constants/assets.dart';
import '../home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  // @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/svg/splash_background.svg',
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              /// GET STARTED LABEL
              SvgPicture.asset(Assets.getStarted, height: 50.h),
              10.height,

              /// WELCOME TEXT
              Text(
                "Go and enjoy our features for free \nand make your life easy with us.",
                style: GoogleFonts.itim(
                  color: Colors.white,
                  fontSize: 17.sp,
                ),
                textAlign: TextAlign.center,
              ),
              16.height,

              /// START CIRCLE BUTTON
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                  context,
                  CupertinoPageRoute(builder: (context) => const HomeScreen()),
                ),
                child: Container(
                  height: 80.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xffFDB623),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xffFDB623).withOpacity(0.5),
                        blurRadius: 23.r,
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: SvgPicture.asset(Assets.arrowRight, width: 26.w),
                ),
              ),
              30.height,
            ],
          )
        ],
      ),
    );
  }
}