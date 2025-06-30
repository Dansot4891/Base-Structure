// 실제 뷰에서 이용되는 Entity
// 서버에서 받아오는 데이터(Model)를
// Entity로 변환하여 사용한다.
class TodoEntity {
  final int id;
  final String title;
  final String content;

  TodoEntity({
    required this.id,
    required this.title,
    required this.content,
  });

  // 새로운 객체를 반환하는
  // copyWith 함수
  TodoEntity copyWith({
    int? id,
    String? title,
    String? content,
  }) {
    return TodoEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
    );
  }

  @override
  bool operator ==(covariant TodoEntity other) {
    if (identical(this, other)) return true;

    return other.id == id && other.title == title && other.content == content;
  }

  @override
  int get hashCode => id.hashCode ^ title.hashCode ^ content.hashCode;

  @override
  String toString() => 'TodoEntity(id: $id, title: $title, content: $content)';
}
