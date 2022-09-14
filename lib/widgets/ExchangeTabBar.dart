import 'package:flutter/material.dart';
import "package:dashboard/models/model_exchange.dart";

class ExchangeTabBar extends StatefulWidget {
  final List<Exchange> exchanges;
  const ExchangeTabBar({
    super.key,
    required this.exchanges,
  });

  @override
  State<ExchangeTabBar> createState() => _ExchangeTabBarState();
}

class _ExchangeTabBarState extends State<ExchangeTabBar> {
  //* List<exchangebalances> 뭔가 있어야 함
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      //* 여기서 크기를정해야함
      // mediaquery로 전체 비율 맞추고
      // maxwidth로 가둬주면 스크린 클 때는 작게, 작을 때는 크게 만들 수 있음
      // 지금 제약이 없으니까 안에 list.generate해서 각각의 텍스트를 볼 때... 이렇게된다 이거야

      child: Row(
        children: List.generate(widget.exchanges.length, (index) {
          return InkWell(
            onTap: () {
              setState(() {
                _currentIndex = index;
                //* body도 indexing이 되어서 해야합니다
              });
            },
            child: Text(widget.exchanges[index].name),
          );
        }),
      ),
    );
  }
}
