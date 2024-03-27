import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';
@freezed
class ProductModel with _$ProductModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProductModel({
    int? id,
    @Default('assets/products/pizza.png') String asset,
    required String title,
    @Default(999) int stock,
    @Default(1990) int price,

  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}