import 'package:bmi/custom_counter_widget.dart';
import 'package:bmi/custom_gender_widget.dart';
import 'package:bmi/custom_material_button_widget.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'custom_appbar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

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
        padding: const EdgeInsets.all(24),
        child: Column(
          spacing: 25,
          children: [
            Expanded(
              child: Row(
                spacing: 10,
                children: [
                  CustomGenderWidget(
                    onTap: () {
                      isMale = true;
                      setState((){});
                    },
                    icon: 'assets/icons/male_icon.png',
                    text: 'Male',
                    color: isMale? AppColor.selected : AppColor.unselected,
                  ),
                  CustomGenderWidget(
                    onTap: () {
                      isMale = false;
                      setState((){});
                    },
                    icon: 'assets/icons/female_icon.png',
                    text: 'Female',
                    color: isMale? AppColor.unselected : AppColor.selected,
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
                        text: height.toString(),
                        style: TextStyle(
                          color: AppColor.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: ' cm',
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
                      value: height.toDouble(),
                      onChanged: (val) {
                        height = val.toInt();
                        setState((){});
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
                spacing: 10,
                children: [
                  CustomCounterWidget(
                    text: 'Weight',
                    value: weight,
                    onTapMinus: () {
                      if (weight > 1) {
                        weight--;
                        setState((){});
                      }
                    },
                    onTapPlus: () {
                      if (weight < 250) {
                        weight++;
                        setState((){});
                      }
                    },
                  ),
                  CustomCounterWidget(
                    text: 'Age',
                    value: age,
                    onTapMinus: () {
                      if (age > 0) {
                        age--;
                        setState((){});
                      }
                    },
                    onTapPlus: () {
                      if (age < 150) {
                        age++;
                        setState((){});
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
        onTap: () {},
      ),
    );
  }
}
