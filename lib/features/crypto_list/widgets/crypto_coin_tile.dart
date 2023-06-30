import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../repositories/crypto_coins/models/crypto_coin.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coin,
  });

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
        leading: Image.network(coin.imageUrl),
        title: Text(coin.name, style: theme.textTheme.bodyLarge),
        subtitle:
            Text("${coin.priceInUSD} \$", style: theme.textTheme.bodySmall),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.of(context).pushNamed('/crypto-page', arguments: coin);
        });
  }
}
