import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Coin {
  Coin({
    @required this.name,
    @required this.symbol,
    @required this.imageUrl,
    @required this.price,
  });

  String name;
  String symbol;
  String imageUrl;
  String price;

  factory Coin.fromJson(Map<String, dynamic> json) {
    return Coin(
      name: json['currency'],
      symbol: json['id'],
      imageUrl: json['logo_url'],
      price: json['price'],
    );
  }
}

List<Coin> coinList = [];
