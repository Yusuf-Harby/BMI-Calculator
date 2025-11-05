import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'BMI Calculator',
        style: TextStyle(
          color: AppColor.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      shadowColor: AppColor.black,
      elevation: 5,
      centerTitle: true,
      backgroundColor: AppColor.selected,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 50);
}
