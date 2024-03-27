// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_create_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderCreateEntityImpl _$$OrderCreateEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderCreateEntityImpl(
      orderProducts: (json['orderProducts'] as List<dynamic>)
          .map((e) => OrderProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      table: json['table'] as int,
    );

Map<String, dynamic> _$$OrderCreateEntityImplToJson(
        _$OrderCreateEntityImpl instance) =>
    <String, dynamic>{
      'orderProducts': instance.orderProducts,
      'table': instance.table,
    };
