// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderProductModelImpl _$$OrderProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderProductModelImpl(
      id: json['id'] as int?,
      productId: json['product_id'] as int,
      orderId: json['order_id'] as int,
      count: json['count'] as int,
    );

Map<String, dynamic> _$$OrderProductModelImplToJson(
        _$OrderProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'order_id': instance.orderId,
      'count': instance.count,
    };
