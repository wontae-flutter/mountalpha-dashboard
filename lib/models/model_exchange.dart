class Exchange {
  String name;
  late int exchangeIdx;
  bool active = true;
  static int count = 0;

  Exchange({
    required this.name,
    // required this.exchangeIdx,
    required this.active,
  }) {
    //* Temporal indexing
    count++;
    exchangeIdx = count;
  }
}
