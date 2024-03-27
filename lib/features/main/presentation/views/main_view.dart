import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kassa/constants/colors/color_styles.dart';
import 'package:kassa/constants/main_config_app.dart';
import 'package:kassa/constants/texts/text_styles.dart';
import 'package:kassa/features/main/presentation/bloc/order/order_bloc.dart';
import 'package:kassa/features/main/presentation/widgets/main_card.dart';
import 'package:kassa/features/order/presentation/views/select_table_view.dart';
import 'package:kassa/features/order_history/presentation/views/history_orders_view.dart';


class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {

  @override
  void initState() {
    super.initState();

    //Getting orders from cache
    context.read<OrderBloc>().add(GetOrderEvent());
  }


  @override
  Widget build(BuildContext context) {
    final orderBloc = context.read<OrderBloc>();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorStyles.primary,
        title: Text(MainConfigApp.appName, style: TextStyles.white20w700,),
      ),
      body: BlocBuilder<OrderBloc, OrderState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  MainCard(
                    title: 'Выполнить заказ', 
                    icon: const Icon(Icons.food_bank_outlined, color: ColorStyles.primary, size: 35,), 
                    onTap: (){
                      Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context) => const SelectTableView()));
                    }
                  ),
                  
                  const SizedBox(height: 15),
                  MainCard(
                    title: 'Список заказов (${orderBloc.orders.length})', 
                    icon: const Icon(Icons.menu_book_sharp, color: ColorStyles.primary, size: 32,), 
                    onTap: (){
                      Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context) => const HistoryOrdersView()));
                    }
                  ),
                  
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}