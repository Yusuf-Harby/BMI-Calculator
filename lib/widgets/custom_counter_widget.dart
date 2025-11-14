import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/constants/app_colors.dart';

class CustomCounterWidget extends StatelessWidget {
  const CustomCounterWidget({
    super.key,
    required this.text,
    required this.value,
    required this.onTapMinus,
    required this.onTapPlus,
  });
  final String text;
  final int value;
  final void Function()? onTapMinus;
  final void Function()? onTapPlus;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.unselected,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            SizedBox(height: 15.h),
            Text(
              text,
              style: TextStyle(
                color: AppColor.gray,
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              value.toString(),
              style: TextStyle(
                color: AppColor.white,
                fontSize: 40.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 40.w,
                  height: 40.w,
                  child: FloatingActionButton(
                    onPressed: onTapMinus,
                    backgroundColor: AppColor.gray,
                    shape: CircleBorder(),
                    child: Text(
                      '-',
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 40.w,
                  height: 40.w,
                  child: FloatingActionButton(
                    onPressed: onTapPlus,
                    backgroundColor: AppColor.gray,
                    shape: CircleBorder(),
                    child: Text(
                      '+',
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
