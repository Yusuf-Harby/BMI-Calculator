import 'package:bmi/app_colors.dart';
import 'package:bmi/custom_appbar_widget.dart';
import 'package:bmi/custom_material_button_widget.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: AppColor.primary,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 25,
          children: [
            Text(
              'Your Result',
              style: TextStyle(
                color: AppColor.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.unselected,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 58,),
                    Text(
                      'Normal',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 33,),
                    Text(
                      '19.2',
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 64,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 60,),
                    Text(
                      'You Have a Normal Body Weight, Good Job. hfjdskjfksdjfkljsdfi jsidjfaisoj idf jij ija fijsifj ijsdfijk jfaio',
                      style: TextStyle(
                        color: AppColor.gray,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 1,)
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
