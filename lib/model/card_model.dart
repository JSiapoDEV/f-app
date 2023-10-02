import 'package:f_app/constants/card_constant.dart';

class CardModel {
  final CARD card;
  final String name;
  final String nro;
  final String nroCCI;
  final double amount;
  final String id;
  final String currency;
  final status = true;

  CardModel({
    required this.card,
    required this.name,
    required this.nro,
    required this.nroCCI,
    required this.amount,
    required this.id,
    required this.currency,
  });
}
