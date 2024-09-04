class Kuis {
  final String id;
  final String title;
  final Map<String, bool> options;

  Kuis({
    required this.id,
    required this.title,
    required this.options,
  });

  @override
  String toString() {
    return 'Kuis(id : $id, title : $title, options : $options)';
  }
}