class TransactionHistoryModel {
  final String title, subTitle, amount;
  final bool isWithDrawal;
  const TransactionHistoryModel({
    required this.title,
    required this.subTitle,
    required this.amount,
    required this.isWithDrawal,
  });
}
