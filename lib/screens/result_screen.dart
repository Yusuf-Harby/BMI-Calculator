import 'package:bmi/core/constants/app_colors.dart';
import 'package:bmi/widgets/custom_appbar_widget.dart';
import 'package:bmi/core/utils/bmi_calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_material_button_widget.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});
  static const String pageRoute = 'Result Screen';
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as BmiCalculator;

    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: AppColor.primary,
      body: Padding(
        padding: EdgeInsets.all(24.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 25.h,
          children: [
            Text(
              'Your Result',
              style: TextStyle(
                color: AppColor.white,
                fontSize: 40.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.unselected,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 58.h),
                    Text(
                      args.getState(),
                      style: TextStyle(
                        color: args.getColor(),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 33.h),
                    Text(
                      args.calculateBmi().toStringAsFixed(2),
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 64.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 60.h),
                    Text(
                      args.getDesc(),
                      style: TextStyle(
                        color: AppColor.gray,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 1),
          ],
        ),
      ),
      bottomNavigationBar: CustomMaterialButtonWidget(
        text: 'Re - Calculate',
        onTap: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
