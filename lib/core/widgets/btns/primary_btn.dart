


import 'package:flutter/material.dart';
import 'package:kassa/constants/colors/color_styles.dart';
import 'package:kassa/constants/texts/text_styles.dart';

class PrimaryBtn extends StatelessWidget {
  final Function() onTap;
  final String text;
  final bool isArrow;
  const PrimaryBtn({super.key, 
    required this.onTap,
    required this.text,
    this.isArrow = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: onTap,
      child: Container(
        height: 55,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: ColorStyles.primary,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: !isArrow ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
          children: [
            Text(text, style: TextStyles.white18w700,),
            if(isArrow)
            const Icon(Icons.arrow_forward_ios_sharp, color: ColorStyles.white, size: 25,), 
          ],
        )
      ),
    );
  }
}