// ignore: import_of_legacy_library_into_null_safe
import 'package:dartz/dartz.dart';
import 'package:kassa/core/error/failures.dart';
import 'package:kassa/core/usecases/usecase.dart';
import 'package:kassa/features/main/data/models/order_model.dart';
import 'package:kassa/features/main/domain/repositories/main/main_repository.dart';

class GetOrders implements UseCase<List<OrderModel>, NoParams> {
  final MainRepository repository;

  GetOrders(this.repository);

  @override
  Future<Either<Failure, List<OrderModel>>> call(NoParams params) async {
    return await repository.getOrders();
  }
}
// class GetMainParams extends Equatable {
//   final String query;
//   final bool isMock;//For testing

//   const GetMainParams({required this.query, this.isMock = false});

//   @override
//   List<Object> get props => [query];
// }