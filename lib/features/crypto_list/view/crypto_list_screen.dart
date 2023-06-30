import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../repositories/crypto_coins/crypto_coins.dart';
import '../widgets/widgets.dart';

class CryptoList extends StatefulWidget {
  const CryptoList({super.key});

  @override
  State<CryptoList> createState() => _CryptoListState();
}

class _CryptoListState extends State<CryptoList> {
  List<CryptoCoin>? _cryptoCoinsList;

  @override
  void initState() {
    _loadCryptoCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crypto Coin List"),
      ),
      body: (_cryptoCoinsList == null)
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.separated(
              separatorBuilder: (context, index) =>
                  const Divider(color: Colors.white),
              itemCount: _cryptoCoinsList!.length,
              itemBuilder: (context, i) {
                final coin = _cryptoCoinsList![i];
                final coinName = coin.name;
                return CryptoCoinTile(coin: coin);
              }),
    );
  }

  Future<void> _loadCryptoCoins() async {
    _cryptoCoinsList = await GetIt.I<CryptoCoinsRepository>().getCoinsList();
    setState(() {});
  }
}
