import 'card_model.dart';
import 'house_model.dart';
import 'review_model.dart';

class Person {
  int id;
  String fullName;
  String email;
  String emailPassword;
  String phoneNumber;
  String avatar;
  List<String> locationNames = [];
  List<CardModel> cardsOfPerson = [];
  List<ReviewModel> reviewsList = [];
  List<HouseModel> soldHouses = [];

  Person({
    required this.id,
    required this.fullName,
    required this.email,
    required this.emailPassword,
    required this.phoneNumber,
    required this.avatar,
    required this.locationNames,
    required this.cardsOfPerson,
    required this.reviewsList,
    required this.soldHouses,
  });

  @override
  String toString() {
    return 'Person{id: $id, fullName: $fullName, email: $email, password: $emailPassword, phoneNumber: $phoneNumber, avatar: $avatar, locationNames: $locationNames, cardsOfPerson: $cardsOfPerson, reviewsList: $reviewsList, soldHouses: $soldHouses}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          fullName == other.fullName &&
          email == other.email &&
          emailPassword == other.emailPassword &&
          phoneNumber == other.phoneNumber &&
          avatar == other.avatar &&
          locationNames == other.locationNames &&
          cardsOfPerson == other.cardsOfPerson &&
          reviewsList == other.reviewsList &&
          soldHouses == other.soldHouses;

  @override
  int get hashCode =>
      id.hashCode ^
      fullName.hashCode ^
      email.hashCode ^
      emailPassword.hashCode ^
      phoneNumber.hashCode ^
      avatar.hashCode ^
      locationNames.hashCode ^
      cardsOfPerson.hashCode ^
      reviewsList.hashCode ^
      soldHouses.hashCode;
}
