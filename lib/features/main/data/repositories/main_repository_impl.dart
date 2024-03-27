// ignore: import_of_legacy_library_into_null_safe
import 'package:dartz/dartz.dart';
import 'package:kassa/core/error/failures.dart';
import 'package:kassa/core/services/network/network_info.dart';
import 'package:kassa/features/main/data/datasources/main/local_datasource.dart';
import 'package:kassa/features/main/data/models/order_model.dart';
import 'package:kassa/features/main/domain/repositories/main/main_repository.dart';


class MainRepositoryImpl implements MainRepository {
  final MainDataSource localDataSource;
  final NetworkInfo networkInfo;
  MainRepositoryImpl(
      this.localDataSource, this.networkInfo);


  /// Получение информации 
  /// главная
  @override
  Future<Either<Failure, List<OrderModel>>> getOrders() async {
    // if (await networkInfo.isConnected) {
    try {
      var res = await localDataSource.getOrders();
      return Right(res);
    } catch (e) {
      return Left(CacheFailure());
    }
    // } else {
    //   return Left(NetworkFailure());
    // }
  }




  @override
  Future<Either<Failure, OrderModel>> createOrder(params) async {
    // if (await networkInfo.isConnected) {
    try {
      var res = await localDataSource.createOrder(params.orderCreateEntity);
      return Right(res);
    } catch (e) {
      return Left(CacheFailure());
    }
    // } else {
    //   return Left(NetworkFailure());
    // }
  }



}

