part of 'order_bloc.dart';

abstract class OrderState extends Equatable {
  const OrderState();
  @override
  List<Object> get props => [];
}

class OrderInitialState extends OrderState {}
class OrderLoadingState extends OrderState {}
class OrderErrorState extends OrderState {
  final String message;
  const OrderErrorState({required this.message});
}
class OrderInternetErrorState extends OrderState{}

class GotSuccessOrderState extends OrderState{}
class OrderBlankState extends OrderState{}