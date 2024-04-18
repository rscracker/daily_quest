import 'package:daily_quest/app/modules/login/view_model/login_view_model.dart';
import 'package:daily_quest/app/widgets/base_view.dart';
import 'package:flutter/material.dart';

class LoginView extends BaseView<LoginViewModel> {
  LoginView({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [_logo(), _loginButton(onPressed: controller.login)],
        ),
      ),
    );
  }

  Widget _logo() {
    return const Padding(
      padding: EdgeInsets.only(bottom: 50.0),
      child: Text(
        'Daily Quest',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
      ),
    );
  }

  Widget _loginButton({required VoidCallback onPressed}) {
    return GestureDetector(
        onTap: onPressed,
        child: Image.asset('assets/kakao/kakao_login_large_wide.png'));
  }
}
