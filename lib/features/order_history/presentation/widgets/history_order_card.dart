import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kassa/constants/colors/color_styles.dart';
import 'package:kassa/constants/texts/text_styles.dart';
import 'package:kassa/features/main/data/models/order_model.dart';



class HistoryOrderCard extends StatelessWidget {
  final OrderModel orderModel;
  const HistoryOrderCard({super.key, required this.orderModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        border: Border.all(color: ColorStyles.primary),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Заказ #${orderModel.id}', style: TextStyles.black18w700.copyWith(color: ColorStyles.primary,),),
              Text('Стол №${orderModel.tableId+1}', style: TextStyles.black16w700),
            ],
          ),
          const SizedBox(height: 10,),
          Text('Общая цена: ${orderModel.total} тг.', style: TextStyles.black14w700),
          Text('Время: ${DateFormat('d MMM hh:mm').format(orderModel.createdAt)}', style: TextStyles.black14w400),
        ],
      )
    );
  }
}