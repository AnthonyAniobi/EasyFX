part of 'language_bloc.dart';

abstract class LanguageState extends Equatable {
  final Language language;
  const LanguageState(this.language);

  @override
  List<Object> get props => [language];
}

class LanguageCurrent extends LanguageState {
  const LanguageCurrent(super.language);
}
