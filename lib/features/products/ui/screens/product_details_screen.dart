import 'package:ecommerce/app/app_colors.dart';
import 'package:ecommerce/core/extensions/localization_extension.dart';
import 'package:ecommerce/features/products/ui/widgets/increment_decrement_counter_widget.dart';
import 'package:ecommerce/features/products/ui/widgets/product_image_carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  static const String name = '/product_details';

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.localizations.productDetails)),
      body: Column(
        children: [
          Expanded(child: Column(children: [ProductImageCarouselSlider()])),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              // ignore: deprecated_member_use
              color: AppColors.themeColor.withOpacity(0.1),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Price"),
                    Text(
                      "\$100",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 140,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Add to Cart'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(
                            "Nike 320 2025 new edition",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IncrementDecrementCounterWidget(
                      onChanged: (int value) {
                        // Handle count change
                        print(value);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
