import 'package:kassa/core/error/failures.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kassa/core/usecases/usecase.dart';
import 'package:kassa/features/main/data/models/order_model.dart';
import 'package:kassa/features/main/domain/usecases/create_order.dart';
import 'package:kassa/features/main/domain/usecases/get_orders.dart';
import 'package:kassa/features/order/domain/entities/order_create_entity.dart';
part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  GetOrders getOrders;
  CreateOrder createOrder;

  OrderBloc(this.getOrders, this.createOrder) : super(OrderInitialState()) {
    on<GetOrderEvent>(_getOrder);
    on<CreateOrderEvent>(_createOrder);
  }



  List<OrderModel> _orders = [];

  List<OrderModel> get orders => _orders;


  ///Get orders
  void _getOrder(GetOrderEvent event, Emitter<OrderState> emit) async {
    emit(OrderLoadingState());
    final gotOrder = await getOrders.call(NoParams());
    OrderState state = gotOrder.fold(
      (error) => errorCheck(error),
      (data) {
        _orders = data;
        return GotSuccessOrderState();
      },
    );
    emit(state);
  }




  void _createOrder(CreateOrderEvent event, Emitter<OrderState> emit) async {

    emit(OrderLoadingState());
    final gotOrder = await createOrder.call(CreateOrderParams(orderCreateEntity: event.orderCreateEntity));
    OrderState state = gotOrder.fold(
      (error) => errorCheck(error),
      (data) {
        return GotSuccessOrderState();
      },
    );
    emit(state);
  }




  OrderState errorCheck(Failure failure){
    if(failure == ConnectionFailure() || failure == NetworkFailure()){
      return OrderInternetErrorState();
    }else if(failure is ServerFailure){
      return OrderErrorState(message: failure.message.length < 100 ? failure.message : 'Ошибка сервера');
    }else{
      return const OrderErrorState(message: 'Повторите попытку');
    }
  }
} 
