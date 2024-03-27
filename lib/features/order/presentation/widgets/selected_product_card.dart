import 'package:flutter/material.dart';
import 'package:kassa/constants/colors/color_styles.dart';
import 'package:kassa/constants/texts/text_styles.dart';
import 'package:kassa/features/main/data/models/order_product_model.dart';
import 'package:kassa/features/order/presentation/widgets/product_to_cart_mini_with_counter_btn.dart';



class SelectedProductCard extends StatelessWidget {
  final OrderProductModel orderProductModel;
  final VoidCallback onAdd;
  final VoidCallback onRemove;
  const SelectedProductCard({super.key, required this.onAdd, required this.onRemove, required this.orderProductModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: (){},
      child: Container(
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          border: Border.all(color: ColorStyles.primary),
          borderRadius: BorderRadius.circular(15)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(orderProductModel.product.title, style: TextStyles.black18w700.copyWith(color: ColorStyles.primary,),),
            ProductToCartMiniWithCounterBtn(count: orderProductModel.count, onAdd: onAdd, onRemove: onRemove)
          ],
        )
      ),
    );
  }
}