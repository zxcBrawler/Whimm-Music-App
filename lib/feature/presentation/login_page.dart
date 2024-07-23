import 'package:flutter/material.dart';
import 'package:music_app_flutter/config/app_colors.dart';
import 'package:music_app_flutter/config/dark_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          // Wrap the Column with SingleChildScrollView
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "'Music is my passion! Come listen with me!'",
                          textAlign: TextAlign.center,
                          style: hintTextStyle.copyWith(
                              color: AppColors.textColorMain,
                              fontSize: 20,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets/logoMusic.png"),
                    ),
                  ],
                ),
                const SizedBox(height: 70),
                Text(
                  "Login",
                  style: headersTextStyle,
                ),
                const SizedBox(height: 44),
                Form(
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
                                  "Login",
                                  style: buttonsTextStyle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 80),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",
                                style: hintTextStyle.copyWith(fontSize: 16)),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Sign up",
                                style: secondaryTextStyle.copyWith(
                                    color: AppColors.primaryColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
