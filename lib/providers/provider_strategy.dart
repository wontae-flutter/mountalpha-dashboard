import "package:dashboard/models/model_strategy.dart";

class StrategyProvider {
  List<Strategy> dummyStrategys = [
    Strategy(
        name: "전략 1",
        id: 1,
        description: "삼각차익거래",
        targets: [
          "바이낸스, BTC-ETH spot",
          "바이낸스, BTC-USDT spot",
          "바이낸스, ETH-USDT spot"
        ],
        active: true),
    Strategy(
        name: "전략 2",
        id: 2,
        description: "선현물차익거래",
        targets: ["바이낸스, ETH-USDT perp", "바이낸스, ETH-USDT spot"],
        active: true),
    Strategy(
        name: "전략 3",
        id: 3,
        description: "페어트레이딩",
        targets: ["바이낸스, ETH-USDT spot", "바이낸스, BTC-USDT"],
        active: true),
    Strategy(
        name: "전략 4",
        id: 4,
        description: "거래소차익거래",
        targets: ["바이낸스, BTC-USDT", "에프티엑스, BTC-USDT"],
        active: true),
  ];

  List<Strategy> getAll() {
    return dummyStrategys;
  }
}
