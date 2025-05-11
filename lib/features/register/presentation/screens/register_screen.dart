import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recoding_platform_project/features/register/presentation/widgets/back_to_login.dart';
import 'package:recoding_platform_project/features/register/presentation/widgets/cridentials.dart';
import 'package:recoding_platform_project/src/components/auth_button.dart';
import 'package:recoding_platform_project/src/components/header.dart';
import 'package:recoding_platform_project/src/components/login_footer.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Header(),
        SizedBox(height: 20.h),
        Text(
          "Create your account!",
          style: Theme.of(context)
              .textTheme
              .labelMedium
              ?.copyWith(fontSize: 38.sp),
        ),
        SizedBox(height: 10.h),
        Cridentials(
            fullNameController: fullNameController,
            emailController: emailController,
            passwordController: passwordController,
            confirmPasswordController: confirmPasswordController),
        AuthButton(
          onPressed: () => print("Register button pressed"),
          text: "Register",
          buttonWidth: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 40.w),
        ),
        BackToLogin(),
        Spacer(),
        LoginFooter(),
      ])),
    );
  }
}
