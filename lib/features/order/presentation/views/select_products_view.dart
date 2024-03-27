import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kassa/constants/colors/color_styles.dart';
import 'package:kassa/constants/data.dart';
import 'package:kassa/constants/texts/text_styles.dart';
import 'package:kassa/core/widgets/btns/primary_btn.dart';
import 'package:kassa/features/main/data/models/order_product_model.dart';
import 'package:kassa/features/main/data/models/product_model.dart';
import 'package:kassa/features/main/presentation/bloc/order/order_bloc.dart';
import 'package:kassa/features/main/presentation/views/main_view.dart';
import 'package:kassa/features/main/presentation/widgets/main_card.dart';
import 'package:kassa/features/order/domain/entities/order_create_entity.dart';
import 'package:kassa/features/order/presentation/widgets/product_card.dart';
import 'package:kassa/features/order/presentation/widgets/selected_product_card.dart';


class SelectProductView extends StatefulWidget {
  final int table;
  const SelectProductView({super.key, required this.table});

  @override
  State<SelectProductView> createState() => _SelectProductViewState();
}

class _SelectProductViewState extends State<SelectProductView> {


  late OrderCreateEntity orderCreateEntity;

  @override
  void initState() {
    super.initState();

    orderCreateEntity = OrderCreateEntity(
      orderProducts: [],
      table: widget.table
    );
  }

  void addProductToCart(ProductModel productModel){
    List<OrderProductModel> newOrderProducts = [...orderCreateEntity.orderProducts];

    if(newOrderProducts.any((element) => element.productId == productModel.id)){

      for (var i = 0; i < newOrderProducts.length; i++) {
        if(newOrderProducts[i].productId == productModel.id){
          newOrderProducts[i] = newOrderProducts[i].copyWith(
            count: newOrderProducts[i].count + 1
          );
          break;
        }
      }
    }else{
      newOrderProducts.add(OrderProductModel(
        productId: productModel.id!, 
        orderId: 0, 
        count: 1
      ));
    }

    setState(() {
      orderCreateEntity = orderCreateEntity.copyWith(
        orderProducts: newOrderProducts
      );
    });
  }



  void removeProductFromCart(ProductModel productModel){
    List<OrderProductModel> newOrderProducts = [...orderCreateEntity.orderProducts];

    if(newOrderProducts.where((element) => element.productId == productModel.id).first.count > 1){

      for (var i = 0; i < newOrderProducts.length; i++) {
        if(newOrderProducts[i].productId == productModel.id){
          newOrderProducts[i] = newOrderProducts[i].copyWith(
            count: newOrderProducts[i].count - 1
          );
          break;
        }
      }
    }else{
      newOrderProducts.removeWhere((element) => element.productId == productModel.id);
    }

    setState(() {
      orderCreateEntity = orderCreateEntity.copyWith(
        orderProducts: newOrderProducts
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorStyles.primary,
        title: Text('Выбрать продукцию', style: TextStyles.white20w700,),
      ),
      body: Column(
        children: [
          SizedBox(
            height: mediaSize.height*0.36,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    if(orderCreateEntity.orderProducts.isEmpty)
                    Text('Пока пусто!', style: TextStyles.black18w700,),
                    ...orderCreateEntity.orderProducts.map((e) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: SelectedProductCard(
                          orderProductModel: e, 
                          onAdd: () => addProductToCart(e.product),
                          onRemove: () => removeProductFromCart(e.product),
                        ),
                      );
                    }),
                    const SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                border: Border(top: BorderSide(color: ColorStyles.grey888))
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const SizedBox(height: 5,),
                      Text('Общая цена: ${orderCreateEntity.total} тг.', style: TextStyles.black14w700.copyWith(color: ColorStyles.redAccent),),
                      const SizedBox(height: 5,),
                      Row(
                        children: [
                          Expanded(
                            child: MainCard(
                              title: '1 блюда',
                              icon: const Icon(Icons.food_bank_outlined, color: ColorStyles.primary, size: 25,),
                              onTap: (){
                              }
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(
                            child: MainCard(
                              title: '2 блюда',
                              icon: const Icon(Icons.food_bank_outlined, color: ColorStyles.primary, size: 25,),
                              onTap: (){
                              }
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: List.generate(MainData.products.length, (index) 
                          => SizedBox(
                            width: (mediaSize.width-50)/2,
                            child: ProductCard(
                              productModel: MainData.products[index],
                              onTap: (){
                                addProductToCart(MainData.products[index]);
                              }
                            ),
                          ),
                        ).toList()
                      ),
                      const SizedBox(height: 80,),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: orderCreateEntity.orderProducts.isEmpty
      ? null
      : Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: PrimaryBtn(
          onTap: (){
            context.read<OrderBloc>().add(CreateOrderEvent(orderCreateEntity: orderCreateEntity));
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) => const MainView()), (_) => false);
          },
          text: 'Создать заказ',
        )
      ),
    );
  }
}