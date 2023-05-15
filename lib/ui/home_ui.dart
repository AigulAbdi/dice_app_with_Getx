import 'package:dice_app/app/constants/text_styles/app_text_styles.dart';
import 'package:dice_app/app/constants/texts/app_text.dart';
import 'package:dice_app/ui/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app/constants/colors/app_colors.dart';

class HomeUI extends StatelessWidget {
  HomeUI({required UniqueKey key});

  final HomeController _homeController = Get.put<HomeController>(
    HomeController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellow,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: AppColors.yellow,
        centerTitle: true,
        title: Text(
          AppTexts.text,
          style: AppTextStyles.black25,
        ),
      ),
      body: Center(
        child: Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: InkWell(
                  onTap: _homeController.changeDice,
                  child: Image.asset(
                    'assets/images/dice_${_homeController.leftDice.value}.png',
                    color: AppColors.purpleAccent,
                    height: 190,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: _homeController.changeDice,
                  child: Image.asset(
                    'assets/images/dice_${_homeController.rightDice.value}.png',
                    color: AppColors.purpleAccent,
                    height: 190,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
