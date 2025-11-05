import 'package:flutter/material.dart';

import 'app_colors.dart';

class CustomMaterialButtonWidget extends StatelessWidget {
  const CustomMaterialButtonWidget({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      color: AppColor.secondary,
      minWidth: double.infinity,
      height: 100,
      child: Text(
        text,
        style: TextStyle(
          color: AppColor.white,
          fontSize: 32,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
