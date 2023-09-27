import 'package:equatable/equatable.dart';

class Language extends Equatable {
  final String flagImage;
  final String languageCode;
  final String languageName;

  Language(
      {required this.flagImage,
      required this.languageCode,
      required this.languageName});

  @override
  List<Object?> get props => [flagImage, languageCode, languageName];

  static List<Language> all = [
    Language(flagImage: "🇺🇸", languageCode: 'en', languageName: 'English'),
    Language(flagImage: "🇫🇷", languageCode: 'fr', languageName: 'French'),
  ];
}
