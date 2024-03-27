part of 'order_bloc.dart';


abstract class OrderEvent extends Equatable {
  @override
  List<Object?> get props => [];
}


class GetOrderEvent extends OrderEvent{
}

class CreateOrderEvent extends OrderEvent{
  final OrderCreateEntity orderCreateEntity;

  CreateOrderEvent({required this.orderCreateEntity});
}