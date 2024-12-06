// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Property {
  final String image;
  final String price;
  final String address;
  final String roomNum;
  final String bathtubNum;
  final String area;
  final String towner;
  final bool isReserve;

  Property({
    required this.image,
    required this.price,
    required this.address,
    required this.roomNum,
    required this.bathtubNum,
    required this.area,
    required this.towner,
    required this.isReserve,
  });

  Property copyWith({
    String? image,
    String? price,
    String? address,
    String? roomNum,
    String? bathtubNum,
    String? area,
    String? towner,
    bool? isReserve,
  }) {
    return Property(
      image: image ?? this.image,
      price: price ?? this.price,
      address: address ?? this.address,
      roomNum: roomNum ?? this.roomNum,
      bathtubNum: bathtubNum ?? this.bathtubNum,
      area: area ?? this.area,
      towner: towner ?? this.towner,
      isReserve: isReserve ?? this.isReserve,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'price': price,
      'address': address,
      'roomNum': roomNum,
      'bathtubNum': bathtubNum,
      'area': area,
      'towner': towner,
      'isReserve': isReserve,
    };
  }

  factory Property.fromMap(Map<String, dynamic> map) {
    return Property(
      image: map['image'] as String,
      price: map['price'] as String,
      address: map['address'] as String,
      roomNum: map['roomNum'] as String,
      bathtubNum: map['bathtubNum'] as String,
      area: map['area'] as String,
      towner: map['towner'] as String,
      isReserve: map['isReserve'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Property.fromJson(String source) =>
      Property.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Property(image: $image, price: $price, address: $address, roomNum: $roomNum, bathtubNum: $bathtubNum, area: $area, towner: $towner, isReserve: $isReserve)';
  }

  @override
  bool operator ==(covariant Property other) {
    if (identical(this, other)) return true;

    return other.image == image &&
        other.price == price &&
        other.address == address &&
        other.roomNum == roomNum &&
        other.bathtubNum == bathtubNum &&
        other.area == area &&
        other.towner == towner &&
        other.isReserve == isReserve;
  }

  @override
  int get hashCode {
    return image.hashCode ^
        price.hashCode ^
        address.hashCode ^
        roomNum.hashCode ^
        bathtubNum.hashCode ^
        area.hashCode ^
        towner.hashCode ^
        isReserve.hashCode;
  }
}
