import 'package:dartz/dartz.dart';
import 'package:kassa/core/error/failures.dart';
import 'package:kassa/features/main/data/models/order_model.dart';
import 'package:kassa/features/main/domain/usecases/create_order.dart';

abstract class MainRepository {
  Future<Either<Failure, List<OrderModel>>> getOrders();
  Future<Either<Failure, OrderModel>> createOrder(CreateOrderParams params);
}