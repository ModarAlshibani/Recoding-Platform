import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recoding_platform_project/src/components/input_text_form_field.dart';

class Cridentials extends StatefulWidget {
  Cridentials(
      {super.key,
      required this.fullNameController,
      required this.emailController,
      required this.passwordController,
      required this.confirmPasswordController});

  final TextEditingController fullNameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  @override
  State<Cridentials> createState() => _CridentialsState();
}

class _CridentialsState extends State<Cridentials> {
  bool isObsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      InputTextFormField(
        controller: widget.fullNameController,
        hintText: 'Full name',
        prefixIconIcon: Icons.person,
        width: 340.w,
        height: 60.h,
        margin: EdgeInsets.symmetric(vertical: 5),
      ),
      InputTextFormField(
        controller: widget.emailController,
        hintText: 'Email',
        prefixIconIcon: Icons.email_outlined,
        width: 340.w,
        height: 60.h,
        margin: EdgeInsets.symmetric(vertical: 5),
      ),
      InputTextFormField(
        controller: widget.passwordController,
        hintText: 'Password',
        obscureText: isObsecureText,
        prefixIconIcon: Icons.vpn_key_outlined,
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              isObsecureText = !isObsecureText;
            });
          },
          child: Icon(
            isObsecureText ? Icons.visibility_off : Icons.visibility,
            size: 25,
            color: Colors.black.withOpacity(0.45),
          ),
        ),
        width: 340.w,
        height: 60.h,
        margin: EdgeInsets.symmetric(vertical: 5),
      ),
      InputTextFormField(
        controller: widget.confirmPasswordController,
        hintText: 'Confirm password',
        prefixIconIcon: Icons.vpn_key_outlined,
        width: 340.w,
        height: 60.h,
        margin: EdgeInsets.symmetric(vertical: 5),
      ),
    ]);
  }
}
