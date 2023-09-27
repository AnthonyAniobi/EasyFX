import 'package:easyfx/core/enums/currency_type.dart';

extension CurrencyTypeExtension on CurrencyType {
  String get name {
    switch (this) {
      case CurrencyType.naira:
        return "Naira";
      case CurrencyType.cfa:
        return "CFA";
    }
  }
}
