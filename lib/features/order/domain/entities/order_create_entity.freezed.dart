// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_create_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderCreateEntity _$OrderCreateEntityFromJson(Map<String, dynamic> json) {
  return _OrderCreateEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderCreateEntity {
  List<OrderProductModel> get orderProducts =>
      throw _privateConstructorUsedError;
  int get table => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCreateEntityCopyWith<OrderCreateEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCreateEntityCopyWith<$Res> {
  factory $OrderCreateEntityCopyWith(
          OrderCreateEntity value, $Res Function(OrderCreateEntity) then) =
      _$OrderCreateEntityCopyWithImpl<$Res, OrderCreateEntity>;
  @useResult
  $Res call({List<OrderProductModel> orderProducts, int table});
}

/// @nodoc
class _$OrderCreateEntityCopyWithImpl<$Res, $Val extends OrderCreateEntity>
    implements $OrderCreateEntityCopyWith<$Res> {
  _$OrderCreateEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderProducts = null,
    Object? table = null,
  }) {
    return _then(_value.copyWith(
      orderProducts: null == orderProducts
          ? _value.orderProducts
          : orderProducts // ignore: cast_nullable_to_non_nullable
              as List<OrderProductModel>,
      table: null == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderCreateEntityImplCopyWith<$Res>
    implements $OrderCreateEntityCopyWith<$Res> {
  factory _$$OrderCreateEntityImplCopyWith(_$OrderCreateEntityImpl value,
          $Res Function(_$OrderCreateEntityImpl) then) =
      __$$OrderCreateEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OrderProductModel> orderProducts, int table});
}

/// @nodoc
class __$$OrderCreateEntityImplCopyWithImpl<$Res>
    extends _$OrderCreateEntityCopyWithImpl<$Res, _$OrderCreateEntityImpl>
    implements _$$OrderCreateEntityImplCopyWith<$Res> {
  __$$OrderCreateEntityImplCopyWithImpl(_$OrderCreateEntityImpl _value,
      $Res Function(_$OrderCreateEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderProducts = null,
    Object? table = null,
  }) {
    return _then(_$OrderCreateEntityImpl(
      orderProducts: null == orderProducts
          ? _value._orderProducts
          : orderProducts // ignore: cast_nullable_to_non_nullable
              as List<OrderProductModel>,
      table: null == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderCreateEntityImpl implements _OrderCreateEntity {
  const _$OrderCreateEntityImpl(
      {required final List<OrderProductModel> orderProducts,
      required this.table})
      : _orderProducts = orderProducts;

  factory _$OrderCreateEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderCreateEntityImplFromJson(json);

  final List<OrderProductModel> _orderProducts;
  @override
  List<OrderProductModel> get orderProducts {
    if (_orderProducts is EqualUnmodifiableListView) return _orderProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderProducts);
  }

  @override
  final int table;

  @override
  String toString() {
    return 'OrderCreateEntity(orderProducts: $orderProducts, table: $table)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderCreateEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._orderProducts, _orderProducts) &&
            (identical(other.table, table) || other.table == table));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orderProducts), table);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderCreateEntityImplCopyWith<_$OrderCreateEntityImpl> get copyWith =>
      __$$OrderCreateEntityImplCopyWithImpl<_$OrderCreateEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderCreateEntityImplToJson(
      this,
    );
  }
}

abstract class _OrderCreateEntity implements OrderCreateEntity {
  const factory _OrderCreateEntity(
      {required final List<OrderProductModel> orderProducts,
      required final int table}) = _$OrderCreateEntityImpl;

  factory _OrderCreateEntity.fromJson(Map<String, dynamic> json) =
      _$OrderCreateEntityImpl.fromJson;

  @override
  List<OrderProductModel> get orderProducts;
  @override
  int get table;
  @override
  @JsonKey(ignore: true)
  _$$OrderCreateEntityImplCopyWith<_$OrderCreateEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
