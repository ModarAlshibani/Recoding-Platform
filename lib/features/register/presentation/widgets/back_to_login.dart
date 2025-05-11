import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:recoding_platform_project/src/routing/routes.dart';
import 'package:recoding_platform_project/src/themes/app_colors.dart';

class BackToLogin extends StatelessWidget {
  const BackToLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        "Already have an account?",
        style: Theme.of(context)
            .textTheme
            .labelSmall!
            .copyWith(fontSize: 14.sp, color: AppColors.black073),
      ),
      TextButton(
          onPressed: () {
            print("Sign up button pressed");
            context.go(Routes.register);
          },
          child: Text(
            "Login here",
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                fontSize: 16.sp,
                color: AppColors.black,
                decoration: TextDecoration.underline),
          ))
    ]);
  }
}
