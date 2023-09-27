import 'package:easyfx/core/enums/currency_type.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_money_event.dart';
part 'add_money_state.dart';

class AddMoneyBloc extends Bloc<AddMoneyEvent, AddMoneyState> {
  AddMoneyBloc() : super(AddMoneyNaira()) {
    on<ChangeCurrencyEvent>(_changeCurrency);
  }

  void _changeCurrency(ChangeCurrencyEvent event, Emitter<AddMoneyState> emit) {
    if (event.currencyType == CurrencyType.cfa) {
      emit(AddMoneyCFA());
    } else {
      emit(AddMoneyNaira());
    }
  }
}
