import 'package:flutter/material.dart';

class StrategyDataTable extends StatefulWidget {
  final String description;
  final List<String> targets;
  //* 여기에 필요한 것들, 뭐 열 정보같은게 다 들어오는 것이다
  // 받아오고!
  const StrategyDataTable({
    super.key,
    required this.description,
    required this.targets,
  });

  @override
  State<StrategyDataTable> createState() => _StrategyDataTableState();
}

class _StrategyDataTableState extends State<StrategyDataTable> {
  @override
  Widget build(BuildContext context) {
    print(widget.targets.length);
    return Column(children: [
      Text(widget.description),
      DataTable(
        columns: List.generate(widget.targets.length,
            (index) => DataColumn(label: Text(widget.targets[index]))),
        rows: List.generate(
            3,
            (index) => DataRow(
                cells: List.generate(
                    widget.targets.length, (index) => DataCell(Text("0"))))),
        // children: [
        //   TableRow(
        //     children: List.generate(
        //       widget.targets.length,
        //       (index) => TableCell(
        //         child: Text(
        //           widget.targets[index],
        //         ),
        //       ),
        //     ),
        //   ),
        // ],
      )
    ]);
  }
}
