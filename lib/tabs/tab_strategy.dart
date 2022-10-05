import "package:flutter/material.dart";
import 'package:dashboard/models/model_strategy.dart';
import "package:dashboard/providers/provider_strategy.dart";
import 'package:dashboard/widgets/StrategyTabBar.dart';
import "package:dashboard/widgets/StrategyDataTable.dart";

class StrategyTab extends StatefulWidget {
  const StrategyTab({super.key});

  @override
  State<StrategyTab> createState() => _StrategyTabState();
}

class _StrategyTabState extends State<StrategyTab> {
  int _currentIndex = 0;
  late List<Strategy> strategies;
  StrategyProvider strategyProvider = StrategyProvider();

  @override
  void initState() {
    super.initState();
    strategies = getStrategies();
  }

  List<Strategy> getStrategies() {
    strategies = strategyProvider.getAll();
    return strategies;
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
        // ExchangeTabBar(exchanges: exchanges),
        Container(
          //* 여기서 크기를정해야함, 정하지 않아서 저기 크게 된거임
          // mediaquery로 전체 비율 맞추고
          // maxwidth로 가둬주면 스크린 클 때는 작게, 작을 때는 크게 만들 수 있음
          // 지금 제약이 없으니까 안에 list.generate해서 각각의 텍스트를 볼 때... 이렇게된다 이거야
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              StrategyDataTable(
                  description: strategies[_currentIndex].description,
                  targets: strategies[_currentIndex].targets),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(strategies.length, (index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          _currentIndex = index;
                          print(_currentIndex);
                          //* body도 indexing이 되어서 해야합니다
                        });
                      },
                      child: Container(
                        width: 60,
                        height: 25,
                        margin: const EdgeInsets.symmetric(horizontal: 2.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).colorScheme.primary,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          strategies[index].name,
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                    );
                  }))
            ],
          ),
        ),
      ],
    );
  }
}
