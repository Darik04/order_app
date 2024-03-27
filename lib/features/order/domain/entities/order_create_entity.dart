import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kassa/features/main/data/models/order_product_model.dart';

part 'order_create_entity.freezed.dart';
part 'order_create_entity.g.dart';
@freezed
class OrderCreateEntity with _$OrderCreateEntity {
  const factory OrderCreateEntity({
    required List<OrderProductModel> orderProducts,
    required int table,

  }) = _OrderCreateEntity;

  factory OrderCreateEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderCreateEntityFromJson(json);
}


extension OrderCreateEntityExt on OrderCreateEntity{
  int get total {
    int res = 0;

    for (var element in orderProducts) {
      res += element.product.price * element.count;
    }
    
    return res;
  }
}