import '../features/crypto_coin/crypto_coin.dart';
import '../features/crypto_list/crypto_list.dart';

final routes = {
  '/': (context) => const CryptoList(),
  '/crypto-page': (context) => const CryptoCoinScreen()
};
