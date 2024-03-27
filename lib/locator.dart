import 'package:get_it/get_it.dart';
import 'package:kassa/features/main/data/datasources/main/local_datasource.dart';
import 'package:kassa/features/main/data/repositories/main_repository_impl.dart';
import 'package:kassa/features/main/domain/repositories/main/main_repository.dart';
import 'package:kassa/features/main/domain/usecases/create_order.dart';
import 'package:kassa/features/main/domain/usecases/get_orders.dart';
import 'package:kassa/features/main/presentation/bloc/order/order_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'constants/main_config_app.dart';
import 'core/services/database/auth_params.dart';
import 'core/services/network/network_info.dart';


final sl = GetIt.instance;

void setupInjections() {

  //Main config of system
  sl.registerLazySingleton<MainConfigApp>(() => MainConfigApp());


  //! External
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  // sl.registerFactory<Dio>(
  //   () => Dio(BaseOptions(
  //     baseUrl: Config.url.url,
  //   )),
  // );


  ///Authentication
  sl.registerLazySingleton<AuthConfig>(() => AuthConfig());

  //Datasources
  sl.registerLazySingleton<MainDataSource>(
    () => MainLocalDataSourceImpl(), 
  );

  //Repositories
  sl.registerLazySingleton<MainRepository>(
    () => MainRepositoryImpl(sl(), sl()),
  );

  //UseCases
  sl.registerLazySingleton(() => GetOrders(sl()));
  sl.registerLazySingleton(() => CreateOrder(sl()));

  //Blocs
  sl.registerFactory<OrderBloc>(
    () => OrderBloc(sl(), sl()),
  );



















}
