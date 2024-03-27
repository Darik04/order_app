import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kassa/constants/colors/color_styles.dart';
import 'package:kassa/constants/texts/text_styles.dart';
import 'package:kassa/features/main/presentation/bloc/order/order_bloc.dart';
import 'package:kassa/features/order_history/presentation/widgets/history_order_card.dart';


class HistoryOrdersView extends StatelessWidget {
  const HistoryOrdersView({super.key});



  @override
  Widget build(BuildContext context) {
    final orderBloc = context.read<OrderBloc>();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorStyles.primary,
        title: Text('Заказы', style: TextStyles.white20w700,),
      ),
      body: BlocBuilder<OrderBloc, OrderState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  
                  ...orderBloc.orders.map((e) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: HistoryOrderCard(orderModel: e)
                    );
                  }).toList()
                  
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}