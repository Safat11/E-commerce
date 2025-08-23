import 'package:ecommerce/app/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          // ignore: deprecated_member_use
          color: AppColors.themeColor.withOpacity(0.15),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: const Icon(
              Icons.computer,
              size: 48,
              color: AppColors.themeColor,
            ),
          ),
        ),
        Text(
          "Computers",
          style: TextStyle(
            color: AppColors.themeColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
