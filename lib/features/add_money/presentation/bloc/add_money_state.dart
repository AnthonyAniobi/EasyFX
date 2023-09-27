part of 'add_money_bloc.dart';

abstract class AddMoneyState extends Equatable {
  final CurrencyType currencyType;
  const AddMoneyState(this.currencyType);

  @override
  List<Object> get props => [];
}

class AddMoneyNaira extends AddMoneyState {
  const AddMoneyNaira() : super(CurrencyType.naira);
}

class AddMoneyCFA extends AddMoneyState {
  const AddMoneyCFA() : super(CurrencyType.cfa);
}
