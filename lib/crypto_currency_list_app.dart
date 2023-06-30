import 'package:crypto_coin_list_app/router/router.dart';
import 'package:crypto_coin_list_app/theme/theme.dart';
import 'package:flutter/material.dart';

class CryptoCoinListApp extends StatelessWidget {
  const CryptoCoinListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Crypto Coin List",
      theme: darkTheme,
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}
