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
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.selected,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icons/male_icon.png',
                        width: 144,
                        height: 144,
                      ),
                      Text(
                        'Male',
                        style: TextStyle(
                          color: AppColor.gray,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.unselected,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icons/female_icon.png',
                        width: 144,
                        height: 144,
                      ),
                      Text(
                        'Female',
                        style: TextStyle(
                          color: AppColor.gray,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
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
                  Text(
                    'Height',
                    style: TextStyle(
                      color: AppColor.gray,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
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
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.unselected,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Weight',
                        style: TextStyle(
                          color: AppColor.gray,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '60',
                        style: TextStyle(
                          color: AppColor.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: AppColor.gray,
                            shape: CircleBorder(),
                            child: Text(
                              '-',
                              style: TextStyle(
                                color: AppColor.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: AppColor.gray,
                            shape: CircleBorder(),
                            child: Text(
                              '+',
                              style: TextStyle(
                                color: AppColor.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.unselected,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Age',
                        style: TextStyle(
                          color: AppColor.gray,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '21',
                        style: TextStyle(
                          color: AppColor.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: AppColor.gray,
                            shape: CircleBorder(),
                            child: Text(
                              '-',
                              style: TextStyle(
                                color: AppColor.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: AppColor.gray,
                            shape: CircleBorder(),
                            child: Text(
                              '+',
                              style: TextStyle(
                                color: AppColor.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: MaterialButton(
          onPressed: (){},
        color: AppColor.secondary,
        minWidth: double.infinity,
        height: 100,
        child: Text(
          'Calculate',
          style: TextStyle(
            color: AppColor.white,
            fontSize: 32,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
}
