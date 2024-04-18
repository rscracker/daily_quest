import 'package:daily_quest/app/modules/sign_up/view_model/sign_up_view_model.dart';
import 'package:daily_quest/app/widgets/base_view.dart';
import 'package:daily_quest/app/widgets/custom_button.dart';
import 'package:daily_quest/app/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SignUpView extends BaseView<SignUpViewModel> {
  SignUpView({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _title(),
          const SizedBox(
            height: 20,
          ),
          _nicknameForm(),
          const Spacer(),
          _signUpButton(),
        ],
      ),
    );
  }

  Widget _title() {
    return const Text(
      "회원 가입",
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20,
      ),
    );
  }

  Widget _nicknameForm() {
    return Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '닉네임',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              type: TextFieldType.underline,
              controller: controller.nickController,
              onSubmitted: controller.onNickSubmitted,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              controller.nickCheckMessage,
              style: TextStyle(
                color: controller.isNickAvailable ? Colors.green : Colors.red,
              ),
            ),
          ],
        ));
  }

  Widget _signUpButton() {
    return CustomButton(text: '회원 가입', onPressed: controller.onPressedSignUp);
  }
}
