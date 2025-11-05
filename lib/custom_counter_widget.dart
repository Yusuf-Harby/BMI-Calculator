import 'package:flutter/material.dart';

import 'app_colors.dart';

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
            SizedBox(height: 15),
            Text(
              text,
              style: TextStyle(
                color: AppColor.gray,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 5),
            Text(
              value.toString(),
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
                  onPressed: onTapMinus,
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
                  onPressed: onTapPlus,
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
    );
  }
}
