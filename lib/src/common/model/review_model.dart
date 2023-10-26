import 'person_model.dart';

class ReviewModel {
  String title;
  DateTime time;
  int personId;
  List<int> rating;

  ReviewModel({
    required this.title,
    required this.time,
    required this.personId,
    required this.rating,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReviewModel &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          time == other.time &&
          personId == other.personId &&
          rating == other.rating;

  @override
  int get hashCode =>
      title.hashCode ^ time.hashCode ^ personId.hashCode ^ rating.hashCode;
}
