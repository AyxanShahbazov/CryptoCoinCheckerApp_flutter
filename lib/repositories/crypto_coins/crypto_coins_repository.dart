import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'crypto_coins.dart';

class Crypto {
  static void configureDependencies() {
    final dio = Dio();
    GetIt.I.registerSingleton<AbstractCoinsRepository>(
        CryptoCoinsRepository(dio: dio));
  }
}

class CryptoCoinsRepository implements AbstractCoinsRepository {
  CryptoCoinsRepository({
    required this.dio,
  });
  final Dio dio;

  @override
  Future<List<CryptoCoin>> getCoinsList() async {

    final response = await dio.get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,XRP,AID,ADA&tsyms=USD');
    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;
    final cryptoCoinList = dataRaw.entries.map((e) {
      final usdData =
          (e.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;
      final price = usdData['PRICE'];
      final imgUrl = usdData['IMAGEURL'];
      return CryptoCoin(
          name: e.key,
          priceInUSD: price,
          imageUrl: 'https://cryptocompare.com/$imgUrl');
    }).toList();
    return cryptoCoinList;
  }
}
