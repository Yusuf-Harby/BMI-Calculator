import 'package:bmi/custom_counter_widget.dart';
import 'package:bmi/custom_gender_widget.dart';
import 'package:bmi/custom_material_button_widget.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'custom_appbar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          spacing: 25,
          children: [
            Expanded(
              child: Row(
                spacing: 10,
                children: [
                  CustomGenderWidget(
                    onTap: () {},
                    icon: 'assets/icons/male_icon.png',
                    text: 'Male',
                    color: AppColor.selected,
                  ),
                  CustomGenderWidget(
                    onTap: () {},
                    icon: 'assets/icons/female_icon.png',
                    text: 'Female',
                    color: AppColor.unselected,
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
                    SizedBox(height: 27),
                    Text(
                      'Height',
                      style: TextStyle(
                        color: AppColor.gray,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text.rich(
                      TextSpan(
                        text: '177',
                        style: TextStyle(
                          color: AppColor.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: 'cm',
                            style: TextStyle(
                              color: AppColor.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Slider(
                      value: 60,
                      onChanged: (val) {},
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
                spacing: 10,
                children: [
                  CustomCounterWidget(
                    text: 'Weight',
                    value: 60,
                    onTapMinus: () {},
                    onTapPlus: () {},
                  ),
                  CustomCounterWidget(
                    text: 'Age',
                    value: 21,
                    onTapMinus: () {},
                    onTapPlus: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomMaterialButtonWidget(
        text: 'Calculate',
        onTap: () {},
      ),
    );
  }
}
