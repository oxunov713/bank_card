import 'person_model.dart';

enum Categories {
  house("House"),
  apartment("Apartment"),
  hotel("Hotel"),
  villa("Villa"),
  cottage("Cottage");

  const Categories(this.title);

  final String title;
}

enum Type {
  rent("Rent"),
  sell("Sell");

  const Type(this.title);

  final String title;
}

enum RentType {
  yearly("Yearly"),
  monthly("monthly");

  const RentType(this.title);

  final String title;
}

class HouseModel {
  String title;
  String location;
  int? livingRoom;
  int? bedRoom;
  int? bathRoom;
  int? balcony;
  int? diningRoom;
  int? toilet;
  int? dressingRom;
  int? hallway;
  int totalRooms = 1;
  double? rent;
  double? sell;

  List<String> imagesList;
  List<String> environmentList = [];
  // Uy atrofidagi joylar nomi uchun Masalan: Parking, school and ...
  List<double> rating = [];
  Person? person;
  Categories category;
  Type type;
  // Uy sotib olinishi  yoki kvartiraga qo'yish uchun
  RentType rentType;

  HouseModel({
    required this.title,
    required this.location,
    required this.livingRoom,
    this.bedRoom,
    this.bathRoom,
    this.balcony,
    this.diningRoom,
    this.toilet,
    this.dressingRom,
    this.hallway,
    required this.totalRooms,
    this.rent,
    this.sell,
    required this.imagesList,
    required this.environmentList,
    required this.rating,
    this.person,
    required this.category,
    required this.type,
    required this.rentType,
  });

  @override
  String toString() {
    return 'HouseModel{title: $title, location: $location, livingRoom: $livingRoom, bedRoom: $bedRoom, bathRoom: $bathRoom, balcony: $balcony, diningRoom: $diningRoom, toilet: $toilet, dressingRom: $dressingRom, hallway: $hallway, totalRooms: $totalRooms, rent: $rent, sell: $sell, imagesList: $imagesList, environmentList: $environmentList, rayting: $rating, person: $person, category: $category, type: $type, rentType: $rentType}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HouseModel &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          location == other.location &&
          livingRoom == other.livingRoom &&
          bedRoom == other.bedRoom &&
          bathRoom == other.bathRoom &&
          balcony == other.balcony &&
          diningRoom == other.diningRoom &&
          toilet == other.toilet &&
          dressingRom == other.dressingRom &&
          hallway == other.hallway &&
          totalRooms == other.totalRooms &&
          rent == other.rent &&
          sell == other.sell &&
          imagesList == other.imagesList &&
          environmentList == other.environmentList &&
          rating == other.rating &&
          person == other.person &&
          category == other.category &&
          type == other.type &&
          rentType == other.rentType;

  @override
  int get hashCode =>
      title.hashCode ^
      location.hashCode ^
      livingRoom.hashCode ^
      bedRoom.hashCode ^
      bathRoom.hashCode ^
      balcony.hashCode ^
      diningRoom.hashCode ^
      toilet.hashCode ^
      dressingRom.hashCode ^
      hallway.hashCode ^
      totalRooms.hashCode ^
      rent.hashCode ^
      sell.hashCode ^
      imagesList.hashCode ^
      environmentList.hashCode ^
      rating.hashCode ^
      person.hashCode ^
      category.hashCode ^
      type.hashCode ^
      rentType.hashCode;
}
