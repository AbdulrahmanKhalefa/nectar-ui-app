import 'package:flutter/material.dart';
import 'package:nectar/components/buttons/main_button.dart';
import 'package:nectar/core/utils/app_colors.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Favourite',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            SizedBox(
              height: 650,
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  // var product = products[index];
                  return SizedBox(
                    height: 110,

                    child: Row(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                width: 80,
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYF-9_KR_MDYASe9QsdaeHxXjWlfLhJl33MY2m1ky_re0Gxz9P0S_nXc9vHJqUqYPNQ5g&usqp=CAU',
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Text(
                                  'Bell Pepper Red ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '325ml , price',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff7C7C7C),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 10),
                                SizedBox(width: 10),
                                SizedBox(width: 10),
                              ],
                            ),
                            SizedBox(width: 70),

                            Row(
                              children: [
                                Text('\$1.99'),
                                Icon(Icons.arrow_forward_ios_rounded),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },

                separatorBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(height: 5),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                        endIndent: 40,
                        indent: 40,
                      ),
                      SizedBox(height: 5),
                    ],
                  );
                },
                itemCount: 5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: MainButton(
                text: 'Add All To Cart',
                bgColor: AppColors.primaryColor,
                onChanged: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
