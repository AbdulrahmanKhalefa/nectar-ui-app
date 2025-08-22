import 'package:flutter/material.dart';
import 'package:nectar/components/buttons/main_button.dart';
import 'package:nectar/core/extensions/navigation.dart';
import 'package:nectar/core/utils/app_colors.dart';
import 'package:nectar/feature/accept/accept_screen.dart';
import 'package:nectar/feature/home/models/order_model_offer.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.model});
  final ProductModelOffer model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Icon(Icons.ios_share),
          ),
        ],

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffF2F3F2),
                  borderRadius: BorderRadius.circular(40),
                ),

                width: double.infinity,
                height: 230,
                child: Hero(
                  tag: model.name,
                  child: Image.asset('assets/images/Vector.png'),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      'Naturel Red Apple',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.favorite_border),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text(
                      '1kg, Price',

                      style: TextStyle(
                        color: AppColors.greyColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Icon(Icons.remove, color: AppColors.greyColor, size: 35),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black.withValues(alpha: 0.2),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: IconButton(onPressed: () {}, icon: Text('1')),
                    ),
                    Icon(Icons.add, color: AppColors.primaryColor, size: 35),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Text(
                        '\$4.99',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Divider(color: AppColors.greyColor, indent: 15, endIndent: 15),
              SizedBox(height: 0),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Product Detail',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),

                        Spacer(),
                        Icon(Icons.arrow_drop_down_outlined, size: 35),
                      ],
                    ),
                    SizedBox(height: 5),

                    Text(
                      'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.greyColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: AppColors.greyColor, indent: 15, endIndent: 15),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      'Nutritions',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff7C7C7C),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      width: 50,
                      height: 35,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text('100gr'),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded, size: 25),
                  ],
                ),
              ),
              Divider(color: AppColors.greyColor, indent: 15, endIndent: 15),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      'Review',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded, size: 25),
                  ],
                ),
              ),
              Divider(color: AppColors.greyColor, indent: 15, endIndent: 15),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MainButton(
                  text: 'Add To Basket',
                  onChanged: () {
                    showModalBottomSheet(
                      context: context,
                      isDismissible: false, //اغلاق من خلال الضغط في اي منطقه
                      builder: (context) {
                        return Container(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Checkout',
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Spacer(),
                                      Row(
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            icon: Icon(Icons.close, size: 25),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: AppColors.greyColor,
                                  indent: 15,
                                  endIndent: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Delivery',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: AppColors.greyColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Spacer(),
                                      Row(
                                        children: [
                                          Text(
                                            'Select Method',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: AppColors.greyColor,
                                  indent: 15,
                                  endIndent: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Pament',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: AppColors.greyColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Spacer(),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.add_card_sharp,
                                            color: AppColors.primaryColor,
                                            size: 35,
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: AppColors.greyColor,
                                  indent: 15,
                                  endIndent: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Promo Code',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: AppColors.greyColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Spacer(),
                                      Row(
                                        children: [
                                          Text(
                                            'Pick discount',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: AppColors.greyColor,
                                  indent: 15,
                                  endIndent: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Total Cost',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: AppColors.greyColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Spacer(),
                                      Row(
                                        children: [
                                          Text(
                                            '\$13.97',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: AppColors.greyColor,
                                  indent: 15,
                                  endIndent: 15,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        'By placing an order you agree to our\n Terms And Conditions',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: AppColors.greyColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: double.infinity,

                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: MainButton(
                                      text: 'Place Order',
                                      onChanged: () {
                                        pushTo(context, AcceptScreen());
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
