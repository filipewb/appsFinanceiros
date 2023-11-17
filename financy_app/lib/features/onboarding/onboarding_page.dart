// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:financy_app/common/constants/app_colors.dart';
import 'package:financy_app/common/constants/app_text_styles.dart';

import '../../common/widgets/multi_text_button.dart';
import '../../common/widgets/primary_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceWhite,
      body: Align(
        child: Column(
          children: [
            const SizedBox(height: 48),
            Expanded(
              flex: 2,
              child: Image.asset('assets/images/man.png'),
            ),
            Text(
              'Spend Smarter',
              style: AppTextStyles.mediumText.copyWith(
                color: AppColors.greenLightTwo,
              ),
            ),
            Text(
              'Save More',
              style: AppTextStyles.mediumText.copyWith(
                color: AppColors.greenLightTwo,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 32,
                right: 32,
                top: 16,
                bottom: 4,
              ),
              child: PrimaryButton(
                text: 'Get Started',
                onPressed: () {},
              ),
            ),
            MultiTextButton(
              onPressed: () => log('message'),
              children: [
                Text(
                  'Already have account? ',
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.grey,
                  ),
                ),
                Text(
                  'Log In',
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.greenLightTwo,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
