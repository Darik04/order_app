// ignore: import_of_legacy_library_into_null_safe
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:kassa/core/error/failures.dart';
import 'package:kassa/core/usecases/usecase.dart';
import 'package:kassa/features/main/data/models/order_model.dart';
import 'package:kassa/features/main/domain/repositories/main/main_repository.dart';
import 'package:kassa/features/order/domain/entities/order_create_entity.dart';

class CreateOrder implements UseCase<OrderModel, CreateOrderParams> {
  final MainRepository repository;

  CreateOrder(this.repository);

  @override
  Future<Either<Failure, OrderModel>> call(CreateOrderParams params) async {
    return await repository.createOrder(params);
  }
}
class CreateOrderParams extends Equatable {
  final OrderCreateEntity orderCreateEntity;

  const CreateOrderParams({required this.orderCreateEntity});

  @override
  List<Object> get props => [orderCreateEntity];
}