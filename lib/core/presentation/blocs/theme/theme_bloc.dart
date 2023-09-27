import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeModeState(ThemeMode.light)) {
    on<ToggleThemeEvent>((event, emit) {
      if (state.themeMode == ThemeMode.light) {
        emit(const ThemeModeState(ThemeMode.dark));
      } else {
        emit(const ThemeModeState(ThemeMode.light));
      }
    });
  }
}
