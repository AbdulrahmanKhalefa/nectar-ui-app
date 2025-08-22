import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/components/buttons/main_button.dart';
import 'package:nectar/components/inputs/custom_text_form_field.dart';
import 'package:nectar/core/constants/app_assets.dart';
import 'package:nectar/core/extensions/navigation.dart';
import 'package:nectar/core/utils/app_colors.dart';
import 'package:nectar/feature/auth/page/signup_screen.dart';
import 'package:nectar/feature/auth/widgets/auth_header.dart';
import 'package:nectar/feature/main/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscureText = true;
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
                      textHeader: 'Login',
                      textPararaph: 'Enter your emails and password',
                    ),
                    SizedBox(height: 40),
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
                    SizedBox(height: 20),
                    customTextFormField(
                      obscureText: obscureText,
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
                            obscureText = !obscureText;
                          });
                        },
                        icon: Icon(
                          obscureText
                              ? Icons.remove_red_eye
                              : Icons.visibility_off,

                          color: Colors.green,
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forget Passowrd ?',
                            style: TextStyle(color: AppColors.greyColor),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20),
                    MainButton(
                      text: 'Log In',
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
                          'Don\'t have an account?',
                          style: TextStyle(color: AppColors.greyColor),
                        ),
                        TextButton(
                          onPressed: () {
                            pushWithReblacement(context, SignUpScreen());
                          },
                          child: Text(
                            'Sign Up',
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
