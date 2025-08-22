import 'package:flutter/material.dart';
import 'package:nectar/components/buttons/main_button.dart';
import 'package:nectar/core/utils/app_colors.dart';

class minuProductsCart extends StatelessWidget {
  const minuProductsCart({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40),
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
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OUziD8GvEKLX-CKTCXXpbqvsb3RTpYLZSNpB9mlRf72ZgoRD0UHPBqK04RaWNYtw0fI&usqp=CAU',
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,

                            children: [
                              Text(
                                'Bell Pepper Red ',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '1kg, Price ',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff7C7C7C),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black.withValues(
                                          alpha: 0.2,
                                        ),
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.remove),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text('1', style: TextStyle(fontSize: 20)),
                                  SizedBox(width: 10),

                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black.withValues(
                                          alpha: 0.2,
                                        ),
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.add,
                                        color: AppColors.greyColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 70),

                          Row(
                            children: [
                              Text('\$4.99'),
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
                    SizedBox(height: 30),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                      endIndent: 40,
                      indent: 40,
                    ),
                    SizedBox(height: 30),
                  ],
                );
              },
              itemCount: 4,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: MainButton(
              text: 'Go to Checkout',
              bgColor: AppColors.primaryColor,
              onChanged: () {},
            ),
          ),
        ],
      ),
    );
  }
}
