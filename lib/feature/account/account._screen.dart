import 'package:flutter/material.dart';
import 'package:nectar/core/utils/app_colors.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Image.network(
                      width: 100,
                      'https://static.vecteezy.com/system/resources/previews/049/676/433/non_2x/a-man-with-glasses-and-a-beard-is-in-a-circle-png.png',
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Afsar Hossen',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(Icons.edit, color: AppColors.primaryColor),
                          ],
                        ),
                        Text(
                          'Imshuvo97@gmail.com',
                          style: TextStyle(color: AppColors.greyColor),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),

                Divider(color: Colors.grey, thickness: 1),
                SizedBox(height: 15),
                Row(
                  children: [
                    Icon(Icons.shopify, size: 35),
                    SizedBox(width: 10),
                    Text(
                      'Orders',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined),
                  ],
                ),
                SizedBox(height: 15),
                Divider(color: Colors.grey, thickness: 1),
                SizedBox(height: 15),
                Row(
                  children: [
                    Icon(Icons.add_card_outlined, size: 35),
                    SizedBox(width: 10),
                    Text(
                      'My Details',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined),
                  ],
                ),
                SizedBox(height: 15),
                Divider(color: Colors.grey, thickness: 1),
                SizedBox(height: 15),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 35),
                    SizedBox(width: 10),
                    Text(
                      'Delivery Address',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined),
                  ],
                ),
                SizedBox(height: 15),
                Divider(color: Colors.grey, thickness: 1),
                SizedBox(height: 15),
                Row(
                  children: [
                    Icon(Icons.payment, size: 35),
                    SizedBox(width: 10),
                    Text(
                      'Payment Methods',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined),
                  ],
                ),
                SizedBox(height: 15),
                Divider(color: Colors.grey, thickness: 1),
                SizedBox(height: 15),
                Row(
                  children: [
                    Icon(Icons.compare_outlined, size: 35),
                    SizedBox(width: 10),
                    Text(
                      'Promo Card',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined),
                  ],
                ),
                SizedBox(height: 15),
                Divider(color: Colors.grey, thickness: 1),
                SizedBox(height: 15),
                Row(
                  children: [
                    Icon(Icons.notifications, size: 35),
                    SizedBox(width: 10),
                    Text(
                      'Notifecations ',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined),
                  ],
                ),
                SizedBox(height: 15),
                Divider(color: Colors.grey, thickness: 1),
                SizedBox(height: 15),
                // Row(
                //   children: [
                //     Icon(Icons.live_help_rounded, size: 35),
                //     SizedBox(width: 10),
                //     Text(
                //       'Help',
                //       style: TextStyle(
                //         fontSize: 25,
                //         fontWeight: FontWeight.w800,
                //       ),
                //     ),
                //     Spacer(),
                //     Icon(Icons.arrow_forward_ios_outlined),
                //   ],
                // ),
                // SizedBox(height: 15),
                // Divider(color: Colors.grey, thickness: 1),
                // SizedBox(height: 15),
                // Row(
                //   children: [
                //     Icon(Icons.account_box_outlined, size: 35),
                //     SizedBox(width: 10),
                //     Text(
                //       'About ',
                //       style: TextStyle(
                //         fontSize: 25,
                //         fontWeight: FontWeight.w800,
                //       ),
                //     ),
                //     Spacer(),
                //     Icon(Icons.arrow_forward_ios_outlined),
                //   ],
                // ),
                // SizedBox(height: 15),
                // Divider(color: Colors.grey, thickness: 1),
                SizedBox(height: 80),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Color(0xff7f2f3f2),
                      foregroundColor: AppColors.primaryColor,
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.exit_to_app,
                          color: AppColors.primaryColor,
                          size: 30,
                        ),
                        SizedBox(width: 100),
                        Text(
                          'Log Out',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
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
