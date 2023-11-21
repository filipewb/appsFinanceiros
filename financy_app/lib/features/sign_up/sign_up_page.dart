// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:financy_app/common/widgets/password_form_field.dart';
import 'package:flutter/material.dart';

import '../../common/constants/app_colors.dart';
import '../../common/constants/app_text_styles.dart';
import '../../common/widgets/custom_text_form_field.dart';
import '../../common/widgets/multi_text_button.dart';
import '../../common/widgets/primary_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            'Spend Smarter',
            textAlign: TextAlign.center,
            style: AppTextStyles.mediumText.copyWith(
              color: AppColors.greenLightTwo,
            ),
          ),
          Text(
            'Save More',
            textAlign: TextAlign.center,
            style: AppTextStyles.mediumText.copyWith(
              color: AppColors.greenLightTwo,
            ),
          ),
          Image.asset('assets/images/sign_up_image.png'),
          const Form(
            child: Column(
              children: [
                CustomTextFormField(
                  labelText: "your name",
                  hintText: "John Doe",
                ),
                PasswordFormField(
                  labelText: "choose your password",
                  hintText: "*********",
                ),
                PasswordFormField(
                  labelText: "confirm your password",
                  hintText: "*********",
                ),
              ],
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
              text: 'Sign Up',
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
        ],
      ),
    );
  }
}
