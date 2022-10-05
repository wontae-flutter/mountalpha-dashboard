class Strategy {
  final String name;
  final String description;
  final int id;
  final List<String> targets;
  bool active;

  Strategy({
    required this.name,
    required this.id,
    required this.description,
    required this.targets,
    required this.active,
  });

  @override
  String toString() =>
      "Strategy(name: $name, id:$id, description: $description, targets: $targets)";
}
