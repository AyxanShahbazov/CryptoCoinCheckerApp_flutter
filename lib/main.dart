import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'crypto_currency_list_app.dart';
import 'repositories/crypto_coins/crypto_coins.dart';

void main() {
  GetIt.I.registerSingleton(CryptoCoinsRepository(dio: Dio()));
  runApp(const CryptoCoinListApp());
}
