import 'package:easyfx/core/data/models/language.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(LanguageCurrent(Language.all.first)) {
    on<ChangeLanguageEvent>((event, emit) {
      emit(LanguageCurrent(event.language));
    });
  }
}
