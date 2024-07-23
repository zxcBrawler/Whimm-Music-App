import 'package:flutter/material.dart';
import 'package:music_app_flutter/config/app_colors.dart';
import 'package:music_app_flutter/config/dark_theme.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.chevron_left,
                      color: AppColors.textColorMain,
                      size: 60,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 65,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Create new account",
                  style: headersTextStyle,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.grey450,
                          ),
                          child: TextFormField(
                            cursorColor: AppColors.primaryColor,
                            style: basicTextStyle,
                            decoration: InputDecoration(
                                focusColor: AppColors.primaryColor,
                                border: InputBorder.none,
                                hintText: 'Username',
                                hintStyle: hintTextStyle,
                                prefixIcon: const Icon(
                                  Icons.person,
                                  color: AppColors.primaryColor,
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15)),
                          )),
                      const SizedBox(height: 20),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.grey450,
                          ),
                          child: TextFormField(
                            cursorColor: AppColors.primaryColor,
                            style: basicTextStyle,
                            decoration: InputDecoration(
                                focusColor: AppColors.primaryColor,
                                border: InputBorder.none,
                                hintText: 'Email',
                                hintStyle: hintTextStyle,
                                prefixIcon: const Icon(
                                  Icons.email,
                                  color: AppColors.primaryColor,
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15)),
                          )),
                      const SizedBox(height: 20),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.grey450,
                          ),
                          child: TextFormField(
                            cursorColor: AppColors.primaryColor,
                            style: basicTextStyle,
                            obscureText: true,
                            decoration: InputDecoration(
                                focusColor: AppColors.primaryColor,
                                border: InputBorder.none,
                                hintText: 'Password',
                                hintStyle: hintTextStyle,
                                prefixIcon: const Icon(
                                  Icons.password_rounded,
                                  color: AppColors.primaryColor,
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15)),
                          )),
                      const SizedBox(height: 20),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.grey450,
                          ),
                          child: TextFormField(
                            cursorColor: AppColors.primaryColor,
                            style: basicTextStyle,
                            decoration: InputDecoration(
                                focusColor: AppColors.primaryColor,
                                border: InputBorder.none,
                                hintText: 'Confirm password',
                                hintStyle: hintTextStyle,
                                prefixIcon: const Icon(
                                  Icons.password_rounded,
                                  color: AppColors.primaryColor,
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15)),
                          )),
                      const SizedBox(height: 46),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.primaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Register",
                                  style: buttonsTextStyle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 80),
                    ],
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
