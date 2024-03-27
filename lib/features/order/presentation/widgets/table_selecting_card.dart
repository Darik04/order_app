import 'package:flutter/material.dart';
import 'package:kassa/constants/colors/color_styles.dart';
import 'package:kassa/constants/texts/text_styles.dart';



class TableSelectingCard extends StatelessWidget {
  final String title;
  final bool selected;
  final VoidCallback onTap;
  const TableSelectingCard({super.key, required this.title, required this.onTap, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          border: Border.all(color: ColorStyles.primary, width: selected ? 3 : 1),
          borderRadius: BorderRadius.circular(15),
          boxShadow: !selected 
          ? null
          : [
            BoxShadow(
              color: ColorStyles.primary.withOpacity(0.1),
            )
          ]
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyles.black18w700.copyWith(color: ColorStyles.primary,),),
            const Icon(Icons.table_bar_outlined, color: ColorStyles.primary, size: 32,), 
          ],
        )
      ),
    );
  }
}