import 'package:flutter/material.dart';
import 'package:nectar/components/inputs/custom_text_form_field.dart';
import 'package:nectar/feature/home/models/order_model_findproducts.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Find Products',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              customTextFormField(
                labelText: 'Search Store',
                suffixIcon: Icon(Icons.search),
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
                    return Container(
                      decoration: BoxDecoration(
                        color: product.colorBg,
                        border: Border.all(color: product.colorBorder),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 200,
                      child: Column(
                        children: [
                          Image.network(width: 250, height: 150, product.image),
                          SizedBox(height: 20),
                          Text(
                            product.title,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// var product = products[index];
