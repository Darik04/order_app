import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';
@freezed
class OrderModel with _$OrderModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory OrderModel({
    int? id,
    required int total,
    required int tableId,
    required DateTime createdAt,

  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}