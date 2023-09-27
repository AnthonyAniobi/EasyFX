import 'package:easyfx/core/enums/transaction_type.dart';
import 'package:intl/intl.dart';

class Transaction {
  final name;
  final DateTime dateTime;
  final double amount;
  final TransactionType type;

  Transaction(this.name, this.dateTime, this.amount, this.type);

  String get day => DateFormat('dd MMM, yyyy').format(dateTime);

  String get time => DateFormat('hh a').format(dateTime);

  static List<Transaction> all = [
    Transaction("names", DateTime(2023, 1, 12), 200, TransactionType.deposit),
    Transaction("name1", DateTime(2023, 1, 20), 200, TransactionType.withdraw),
    Transaction("name2", DateTime(2023, 1, 21), 200, TransactionType.deposit),
    Transaction("name3", DateTime(2023, 1, 21), 200, TransactionType.withdraw),
    Transaction("name4", DateTime(2023, 1, 21), 200, TransactionType.deposit),
    Transaction("name5", DateTime(2023, 1, 30), 200, TransactionType.deposit),
    Transaction("name6", DateTime(2023, 1, 30), 200, TransactionType.deposit),
    Transaction("name7", DateTime(2023, 2, 1), 200, TransactionType.withdraw),
    Transaction("name8", DateTime(2023, 2, 1), 200, TransactionType.withdraw),
    Transaction("name9", DateTime(2023, 2, 3), 200, TransactionType.deposit),
    Transaction("name9", DateTime(2023, 2, 3), 200, TransactionType.deposit),
    Transaction("name9", DateTime(2023, 2, 3), 200, TransactionType.deposit),
  ];
}
