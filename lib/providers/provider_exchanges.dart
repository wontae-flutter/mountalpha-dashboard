import "package:dashboard/models/model_exchange.dart";

class ExchangeProvider {
  List<Exchange> dummyExchanges = [
    Exchange(name: "Binance", active: true),
    Exchange(name: "FTX", active: true),
    Exchange(name: "Coinbase", active: true),
    Exchange(name: "Kraken", active: true),
    Exchange(name: "Huobi Global", active: true),
  ];

  List<Exchange> getAll() {
    return dummyExchanges;
  }
}
