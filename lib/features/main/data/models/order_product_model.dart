import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kassa/constants/data.dart';
import 'package:kassa/features/main/data/models/product_model.dart';

part 'order_product_model.freezed.dart';
part 'order_product_model.g.dart';
@freezed
class OrderProductModel with _$OrderProductModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory OrderProductModel({
    int? id,
    required int productId,
    required int orderId,
    required int count,

  }) = _OrderProductModel;

  factory OrderProductModel.fromJson(Map<String, dynamic> json) =>
      _$OrderProductModelFromJson(json);
}


extension OrderProductModelExt on OrderProductModel{

  ProductModel get product => MainData.products.where((element) => element.id == productId).first;
}