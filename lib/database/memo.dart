class Memo {
  final String id;
  final String title;
  final String text;
  final String createTime;
  final String editTime;

  const Memo({required this.id, required this.title, required this.text, required this.createTime, required this.editTime});

  // Convert a Dog into a Map. The keys must correspond to the names of the
  // columns in the database.
  Map<String, dynamic> toMap() {
    return {
      'id' : id,
      'title' : title,
      'text' : text,
      'createTime' : createTime,
      'editTime' : editTime
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'Memo{id: $id, title: $title, text: $text, createTime: $createTime, editTime: $editTime}';
  }
}

