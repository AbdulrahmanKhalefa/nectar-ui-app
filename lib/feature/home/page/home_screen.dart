import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/components/inputs/custom_text_form_field.dart';
import 'package:nectar/core/constants/app_assets.dart';
import 'package:nectar/core/utils/app_colors.dart';
import 'package:nectar/feature/home/models/order_model_offer.dart';
import 'package:nectar/feature/home/widgets/card_ui.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Center(
            child: SvgPicture.asset(
              width: 130,
              AppAssets.logoSvg,
              colorFilter: ColorFilter.mode(
                AppColors.primaryColor,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              customTextFormField(
                labelText: "Search Store",
                suffixIcon: Icon(Icons.search),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Exclusive Offer',

                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 250,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var product = products[index];
                    return CardUi(model: product);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 10);
                  },
                  itemCount: products.length,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Best Selling',

                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 250,
                  ),
                  itemBuilder: (context, index) {
                    var product = products[index];
                    return CardUi(model: product);
                  },
                  itemCount: products.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
