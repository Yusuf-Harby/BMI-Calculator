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
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.selected,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.unselected,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.unselected,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 15),
                          Text(
                            'Weight',
                            style: TextStyle(
                              color: AppColor.gray,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '60',
                            style: TextStyle(
                              color: AppColor.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 21),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.unselected,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 15),
                          Text(
                            'Age',
                            style: TextStyle(
                              color: AppColor.gray,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '21',
                            style: TextStyle(
                              color: AppColor.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 21),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MaterialButton(
        onPressed: () {},
        color: AppColor.secondary,
        minWidth: double.infinity,
        height: 100,
        child: Text(
          'Calculate',
          style: TextStyle(
            color: AppColor.white,
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
