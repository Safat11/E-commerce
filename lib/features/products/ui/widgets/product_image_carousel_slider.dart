import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/app/app_colors.dart';
import 'package:flutter/material.dart';

class ProductImageCarouselSlider extends StatefulWidget {
  const ProductImageCarouselSlider({super.key});

  @override
  State<ProductImageCarouselSlider> createState() =>
      _ProductImageCarouselSliderState();
}

class _ProductImageCarouselSliderState
    extends State<ProductImageCarouselSlider> {
  int _selectedSlider = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 220.0,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              _selectedSlider = index;
              setState(() {});
            },
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,

                  decoration: BoxDecoration(color: AppColors.themeColor),
                  child: Center(
                    child: Text('text $i', style: TextStyle(fontSize: 16.0)),
                  ),
                );
              },
            );
          }).toList(),
        ),
        Positioned(
          bottom: 8,
          right: 0,
          left: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 5; i++)
                Container(
                  height: 16,
                  width: 16,
                  margin: const EdgeInsets.only(left: 4),
                  color: Colors.grey,
                  child: Center(
                    child: Text(
                      'Image $i',
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
