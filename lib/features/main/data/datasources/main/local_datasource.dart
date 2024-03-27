import 'dart:developer';

import 'package:kassa/core/error/exceptions.dart';
import 'package:kassa/core/services/database/consts.dart';
import 'package:kassa/core/services/database/database.dart';
import 'package:kassa/features/main/data/models/order_model.dart';
import 'package:kassa/features/main/data/models/order_product_model.dart';
import 'package:kassa/features/order/domain/entities/order_create_entity.dart';
import 'package:sqflite/sqflite.dart';

abstract class MainDataSource {
  Future<List<OrderModel>> getOrders();
  Future<OrderModel> createOrder(OrderCreateEntity orderCreateEntity);
}


class MainLocalDataSourceImpl
    implements MainDataSource {

  MainLocalDataSourceImpl();

  initDB() async {
    database = await DBProvider.db.database;
  }
  
  late Database database;

  /// Get orders
  @override
  Future<List<OrderModel>> getOrders() async {
    await initDB();
    final data = await database.query(ConstantsForData.orders);
    log('data: ${await database.query(ConstantsForData.orderProducts)}');
    
    List<OrderModel> orders = data.isEmpty 
      ? [] 
      : data.map((jsonMap) => OrderModel.fromJson(jsonMap)).toList();
    
    return orders;
  }



  @override
  Future<OrderModel> createOrder(OrderCreateEntity orderCreateEntity) async {

    int total = 0;

    for (var element in orderCreateEntity.orderProducts) {
      total = total + element.count * element.product.price;
    }

    
    final orderId = await database.insert(ConstantsForData.orders, 
      OrderModel(
        total: total,
        tableId: orderCreateEntity.table, 
        createdAt: DateTime.now()
      ).toJson()
    );
    
    final data = await database.query(ConstantsForData.orders, where: "id = ?", whereArgs: [orderId]);
    
    if(data.isNotEmpty){

      //Set orderProducts
      for (var element in orderCreateEntity.orderProducts) {
        final orderProduct = element.copyWith(
          orderId: orderId
        );
        await database.insert(ConstantsForData.orderProducts, orderProduct.toJson());
        
      }

      return OrderModel.fromJson(data.first);
    }

    throw CacheException();
  }


}
