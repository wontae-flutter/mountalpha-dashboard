import "package:flutter/material.dart";
import 'package:dashboard/models/model_exchange.dart';
import "package:dashboard/providers/provider_exchanges.dart";
import "package:dashboard/widgets/ExchangeTabBar.dart";

class BalanceContent extends StatefulWidget {
  const BalanceContent({super.key});

  @override
  State<BalanceContent> createState() => _BalanceContentState();
}

class _BalanceContentState extends State<BalanceContent> {
  late List<Exchange> exchanges;
  ExchangeProvider exchangesProvider = ExchangeProvider();

  @override
  void initState() {
    super.initState();
    exchanges = getExchanges();
  }

  List<Exchange> getExchanges() {
    exchanges = exchangesProvider.getAll();
    return exchanges;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        // 여기에 거래소들 리스트가 들어가야해, 결국 프로바이더가 필요함
        // InkWell로 클릭하면 바꿀수 있도록!
        // setState로 바꿔주는수밖에... 아니면 onTab, onClick으로 내가 새로 만들어야함
        // 그래야지 커스터마이징을 할 수 있음
        ExchangeTabBar(exchanges: exchanges),
      ],
    );
  }
}
