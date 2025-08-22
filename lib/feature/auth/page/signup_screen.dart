import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/components/buttons/main_button.dart';
import 'package:nectar/components/inputs/custom_text_form_field.dart';
import 'package:nectar/core/constants/app_assets.dart';
import 'package:nectar/core/extensions/navigation.dart';
import 'package:nectar/core/utils/app_colors.dart';
import 'package:nectar/feature/auth/page/login_screen.dart';
import 'package:nectar/feature/auth/widgets/auth_header.dart';
import 'package:nectar/feature/main/main_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool obscreText = true;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [SvgPicture.asset(AppAssets.carrotSvg)],
                    ),
                    SizedBox(height: 100),
                    AuthHeader(
                      textHeader: 'SignUp',
                      textPararaph: 'Enter your credentials to continue',
                    ),
                    SizedBox(height: 30),
                    customTextFormField(
                      labelText: "Username",
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'please enter some text';
                        }
                        return null;
                      },
                      prefixIcon: Icon(
                        Icons.verified_user,
                        color: Colors.green,
                      ),
                      suffixIcon: Icon(Icons.check, color: Colors.green),
                    ),
                    SizedBox(height: 30),
                    customTextFormField(
                      labelText: "Email",
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'please enter some text';
                        }
                        return null;
                      },
                      prefixIcon: Icon(Icons.email, color: Colors.green),
                      suffixIcon: Icon(Icons.check, color: Colors.green),
                    ),
                    SizedBox(height: 30),
                    customTextFormField(
                      obscureText: obscreText,
                      labelText: "Passowrd",
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'please enter your password';
                        } else if (value!.length < 6) {
                          return 'passowrd must be at least 6 characters';
                        }
                        return null;
                      },
                      prefixIcon: Icon(Icons.lock, color: Colors.green),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscreText = !obscreText;
                          });
                        },
                        icon: Icon(
                          obscreText
                              ? Icons.remove_red_eye
                              : Icons.visibility_off,

                          color: Colors.green,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '  By continuing you agree to our ',
                                style: TextStyle(
                                  color: AppColors.greyColor,
                                  fontSize: 15,
                                ),
                              ),
                              TextSpan(
                                text: 'Terms of Service\n ',
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 15,
                                ),
                              ),
                              TextSpan(
                                text: ' and ',
                                style: TextStyle(
                                  color: AppColors.greyColor,
                                  fontSize: 15,
                                ),
                              ),
                              TextSpan(
                                text: 'Privacy Policy.',
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 30),
                    MainButton(
                      text: 'Sign Up',
                      onChanged: () {
                        if (formKey.currentState?.validate() ?? false) {
                          pushWithReblacement(context, MainScreen());
                        }
                      },
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            pushWithReblacement(context, LoginScreen());
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(color: AppColors.primaryColor),
                          ),
                        ),
                      ],
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: TextButton(
                              onPressed: () {},
                              child: Text(''),
                            ),
                          ),
                          TextSpan(text: ''),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
