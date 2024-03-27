import 'package:flutter/material.dart';
import 'package:kassa/constants/colors/color_styles.dart';
import 'package:kassa/constants/texts/text_styles.dart';
import 'package:kassa/features/main/data/models/product_model.dart';



class ProductCard extends StatelessWidget {
  final ProductModel productModel;
  final VoidCallback onTap;
  const ProductCard({super.key, required this.onTap, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            decoration: BoxDecoration(
              border: Border.all(color: ColorStyles.primary),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Image.asset(productModel.asset),
                ),
                const SizedBox(height: 10,),
                Text(productModel.title, style: TextStyles.black18w700.copyWith(color: ColorStyles.primary,),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Склад: ${productModel.stock}', style: TextStyles.black14w700),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Цена: ${productModel.price} тг.', style: TextStyles.black14w700.copyWith(color: ColorStyles.redAccent),)
                  ],
                )
              ],
            )
          ),

          Positioned(
            top: 10,
            right: 10,
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: onTap,
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: ColorStyles.primary,
                  borderRadius: BorderRadius.circular(10)
                ),
                alignment: Alignment.center,
                child: const Icon(
                  Icons.add,
                  color: ColorStyles.white,
                  size: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}