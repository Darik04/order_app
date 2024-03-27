import 'package:flutter/material.dart';
import 'package:kassa/constants/colors/color_styles.dart';
import 'package:kassa/constants/texts/text_styles.dart';


class ProductToCartMiniWithCounterBtn extends StatelessWidget {
  final int count;
  final Function() onAdd;
  final Function() onRemove;
  const ProductToCartMiniWithCounterBtn({Key? key, required this.count, required this.onAdd, required this.onRemove}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: (){
            if(count != 0){
              onRemove();
            }
          },
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: count == 0 ? ColorStyles.grey888 :ColorStyles.redAccent),
              borderRadius: BorderRadius.circular(10)
            ),
            alignment: Alignment.center,
            child: Icon(
              Icons.remove,
              color: count == 0 ? ColorStyles.grey888 :ColorStyles.redAccent,
              size: 20,
            ),
            // Text('-', style: TextStyles.red_18_w400.copyWith(fontSize: 30, color: count == 0 ? ColorStyles.grey888 :ColorStyles.red_accent),),

          ),
        ),
        const SizedBox(width: 12,),
        Text(count.toString(), style: TextStyles.black20w700),
        const SizedBox(width: 12,),
        InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: onAdd,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: ColorStyles.primary),
              borderRadius: BorderRadius.circular(10)
            ),
            alignment: Alignment.center,
            child: const Icon(
              Icons.add,
              color: ColorStyles.primary,
              size: 20,
            ),
          ),
        ),
        
      ],
    );
  }
}