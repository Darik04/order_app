// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['id'] as int?,
      asset: json['asset'] as String? ?? 'assets/products/pizza.png',
      title: json['title'] as String,
      stock: json['stock'] as int? ?? 999,
      price: json['price'] as int? ?? 1990,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'asset': instance.asset,
      'title': instance.title,
      'stock': instance.stock,
      'price': instance.price,
    };
