import 'package:bmi/core/utils/bmi_calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/constants/app_colors.dart';
import '../widgets/custom_appbar_widget.dart';
import '../widgets/custom_counter_widget.dart';
import '../widgets/custom_gender_widget.dart';
import '../widgets/custom_material_button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String pageRoute = 'Home Screen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int weight = 60;
  int height = 177;
  int age = 21;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(24.r),
        child: Column(
          spacing: 25.h,
          children: [
            Expanded(
              child: Row(
                spacing: 10.w,
                children: [
                  CustomGenderWidget(
                    onTap: () {
                      isMale = true;
                      setState(() {});
                    },
                    icon: 'assets/icons/male_icon.png',
                    text: 'Male',
                    color: isMale ? AppColor.selected : AppColor.unselected,
                  ),
                  CustomGenderWidget(
                    onTap: () {
                      isMale = false;
                      setState(() {});
                    },
                    icon: 'assets/icons/female_icon.png',
                    text: 'Female',
                    color: isMale ? AppColor.unselected : AppColor.selected,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColor.unselected,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 27.h),
                    Text(
                      'Height',
                      style: TextStyle(
                        color: AppColor.gray,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Text.rich(
                      TextSpan(
                        text: height.toString(),
                        style: TextStyle(
                          color: AppColor.white,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: ' cm',
                            style: TextStyle(
                              color: AppColor.white,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Slider(
                      value: height.toDouble(),
                      onChanged: (val) {
                        height = val.toInt();
                        setState(() {});
                      },
                      min: 20,
                      max: 200,
                      activeColor: AppColor.secondary,
                      inactiveColor: AppColor.white,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                spacing: 10.w,
                children: [
                  CustomCounterWidget(
                    text: 'Weight',
                    value: weight,
                    onTapMinus: () {
                      if (weight > 1) {
                        weight--;
                        setState(() {});
                      }
                    },
                    onTapPlus: () {
                      if (weight < 250) {
                        weight++;
                        setState(() {});
                      }
                    },
                  ),
                  CustomCounterWidget(
                    text: 'Age',
                    value: age,
                    onTapMinus: () {
                      if (age > 0) {
                        age--;
                        setState(() {});
                      }
                    },
                    onTapPlus: () {
                      if (age < 150) {
                        age++;
                        setState(() {});
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomMaterialButtonWidget(
        text: 'Calculate',
        onTap: () {
          Navigator.of(context).pushNamed(
            'Result Screen',
            arguments: BmiCalculator(
              height: height,
              weight: weight,
              age: age,
              isMale: isMale,
            ),
          );
        },
      ),
    );
  }
}
