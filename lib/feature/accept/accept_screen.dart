import 'package:flutter/material.dart';
import 'package:nectar/components/buttons/main_button.dart';
import 'package:nectar/core/extensions/navigation.dart';
import 'package:nectar/core/utils/app_colors.dart';
import 'package:nectar/feature/home/page/home_screen.dart';

class AcceptScreen extends StatelessWidget {
  const AcceptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(70),
              child: Image.asset('assets/images/accept.png'),
            ),
            Text(
              'Your Order has been\n          accepted',

              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Your items has been placcd and is on\n        it’s way to being processed',

              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.greyColor,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: MainButton(
                  text: 'Back To Home',
                  onChanged: () {
                    pushTo(context, HomeScreen());
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
