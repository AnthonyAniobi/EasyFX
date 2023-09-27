part of 'add_money_bloc.dart';

abstract class AddMoneyEvent extends Equatable {
  const AddMoneyEvent();

  @override
  List<Object> get props => [];
}

class ChangeCurrencyEvent extends AddMoneyEvent {
  final CurrencyType currencyType;

  const ChangeCurrencyEvent(this.currencyType);

  @override
  List<Object> get props => [currencyType];
}
