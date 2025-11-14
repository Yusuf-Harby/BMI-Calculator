import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/constants/app_colors.dart';

class CustomGenderWidget extends StatelessWidget {
  const CustomGenderWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
    required this.onTap,
  });
  final String icon;
  final String text;
  final Color color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(icon, width: 144.w, height: 144.h),
              Text(
                text,
                style: TextStyle(
                  color: AppColor.gray,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
