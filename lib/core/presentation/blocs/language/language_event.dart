part of 'language_bloc.dart';

abstract class LanguageEvent extends Equatable {
  const LanguageEvent();

  @override
  List<Object> get props => [];
}

class ChangeLanguageEvent extends LanguageEvent {
  final Language language;

  const ChangeLanguageEvent(this.language);

  @override
  List<Object> get props => [language];
}
