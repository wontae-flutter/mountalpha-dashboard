import "package:flutter/material.dart";
import 'package:dashboard/tabs/tab_balance.dart';
import 'package:dashboard/tabs/tab_strategy.dart';
import 'package:dashboard/tabs/tab_tmp1.dart';
import 'package:dashboard/tabs/tab_tmp2.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({super.key});

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  int _currentIndex = 0;
  final List<Widget> _mainContents = [
    StrategyTab(),
    BalanceContent(),
    Tmp1Content(),
    Tmp2Content()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                  icon: Icon(IconData(0xf06f7, fontFamily: 'MaterialIcons')),
                  // on 0xe3f7
                  label: Text("Strategies")),
              NavigationRailDestination(
                  icon: Icon(IconData(0xf1dd, fontFamily: 'MaterialIcons')),
                  // on 0xe3f7
                  label: Text("Balance")),
              NavigationRailDestination(
                  icon: Icon(IconData(0xe042, fontFamily: 'MaterialIcons')),
                  // on 0xe3f7
                  label: Text("Tmp1")),
              NavigationRailDestination(
                  icon: Icon(IconData(0xe74a, fontFamily: 'MaterialIcons')),
                  // on 0xe3f7
                  label: Text("Tmp2")),
            ],
            selectedIndex: _currentIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            labelType: NavigationRailLabelType.all,
            elevation: 5,
          ),
          const VerticalDivider(
            thickness: 5,
            width: 1,
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.all(30),
                child: _mainContents[_currentIndex]),
          )
        ],
      ),
    );
  }
}
