// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderProductModel _$OrderProductModelFromJson(Map<String, dynamic> json) {
  return _OrderProductModel.fromJson(json);
}

/// @nodoc
mixin _$OrderProductModel {
  int? get id => throw _privateConstructorUsedError;
  int get productId => throw _privateConstructorUsedError;
  int get orderId => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderProductModelCopyWith<OrderProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderProductModelCopyWith<$Res> {
  factory $OrderProductModelCopyWith(
          OrderProductModel value, $Res Function(OrderProductModel) then) =
      _$OrderProductModelCopyWithImpl<$Res, OrderProductModel>;
  @useResult
  $Res call({int? id, int productId, int orderId, int count});
}

/// @nodoc
class _$OrderProductModelCopyWithImpl<$Res, $Val extends OrderProductModel>
    implements $OrderProductModelCopyWith<$Res> {
  _$OrderProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productId = null,
    Object? orderId = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderProductModelImplCopyWith<$Res>
    implements $OrderProductModelCopyWith<$Res> {
  factory _$$OrderProductModelImplCopyWith(_$OrderProductModelImpl value,
          $Res Function(_$OrderProductModelImpl) then) =
      __$$OrderProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int productId, int orderId, int count});
}

/// @nodoc
class __$$OrderProductModelImplCopyWithImpl<$Res>
    extends _$OrderProductModelCopyWithImpl<$Res, _$OrderProductModelImpl>
    implements _$$OrderProductModelImplCopyWith<$Res> {
  __$$OrderProductModelImplCopyWithImpl(_$OrderProductModelImpl _value,
      $Res Function(_$OrderProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productId = null,
    Object? orderId = null,
    Object? count = null,
  }) {
    return _then(_$OrderProductModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$OrderProductModelImpl implements _OrderProductModel {
  const _$OrderProductModelImpl(
      {this.id,
      required this.productId,
      required this.orderId,
      required this.count});

  factory _$OrderProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderProductModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int productId;
  @override
  final int orderId;
  @override
  final int count;

  @override
  String toString() {
    return 'OrderProductModel(id: $id, productId: $productId, orderId: $orderId, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, productId, orderId, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderProductModelImplCopyWith<_$OrderProductModelImpl> get copyWith =>
      __$$OrderProductModelImplCopyWithImpl<_$OrderProductModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderProductModelImplToJson(
      this,
    );
  }
}

abstract class _OrderProductModel implements OrderProductModel {
  const factory _OrderProductModel(
      {final int? id,
      required final int productId,
      required final int orderId,
      required final int count}) = _$OrderProductModelImpl;

  factory _OrderProductModel.fromJson(Map<String, dynamic> json) =
      _$OrderProductModelImpl.fromJson;

  @override
  int? get id;
  @override
  int get productId;
  @override
  int get orderId;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$OrderProductModelImplCopyWith<_$OrderProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
