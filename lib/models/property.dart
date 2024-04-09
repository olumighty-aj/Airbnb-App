// import 'package:equatable/equatable.dart';
// import 'package:uuid/uuid.dart';

// class Property extends Equatable {
//   final String id;
//   final String description;
//   final String propertyType;
//   final String roomType;
//   final double pricePerNight;
//   final String country;
//   final String city;
//   final int maxGuest;
//   final List<String> amenities;
//   final String mainPhotoUrl;
//   final List<String> photoUrls;

//   Property({
//     required this.id,
//     required this.description,
//     required this.propertyType,
//     required this.roomType,
//     required this.pricePerNight,
//     required this.country,
//     required this.city,
//     required this.maxGuest,
//     required this.amenities,
//     required this.mainPhotoUrl,
//     required this.photoUrls,
//   });

//   @override
//   List<Object?> get props => [
//         id,
//         description,
//         propertyType,
//         roomType,
//         pricePerNight,
//         country,
//         city,
//         maxGuest,
//         amenities,
//         mainPhotoUrl,
//         photoUrls,
//       ];

//   factory Property.fromJson(Map<String, dynamic> json) {
//     return Property(
//       id: json['id'],
//       description: json['description'],
//       propertyType: json['propertyType'],
//       roomType: json['roomType'],
//       pricePerNight: json['pricePerNight'].toDouble(),
//       country: json['country'],
//       city: json['city'],
//       maxGuest: json['maxGuest'],
//       amenities: List<String>.from(json['amenities']),
//       mainPhotoUrl: json['mainPhotoUrl'],
//       photoUrls: List<String>.from(json['photoUrls']),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'description': description,
//       'propertyType': propertyType,
//       'roomType': roomType,
//       'pricePerNight': pricePerNight,
//       'country': country,
//       'city': city,
//       'maxGuest': maxGuest,
//       'amenities': amenities,
//       'mainPhotoUrl': mainPhotoUrl,
//       'photoUrls': photoUrls,
//     };
//   }
// }

// class PropertyFactory {
//   static final _uuid = Uuid();

//   static Property createProperty({
//     required String description,
//     required String propertyType,
//     required String roomType,
//     required double pricePerNight,
//     required String country,
//     required String city,
//     required int maxGuest,
//     required List<String> amenities,
//     required String mainPhotoUrl,
//     required List<String> photoUrls,
//   }) {
//     String id = _uuid.v4();
//     return Property(
//       id: id,
//       description: description,
//       propertyType: propertyType,
//       roomType: roomType,
//       pricePerNight: pricePerNight,
//       country: country,
//       city: city,
//       maxGuest: maxGuest,
//       amenities: amenities,
//       mainPhotoUrl: mainPhotoUrl,
//       photoUrls: photoUrls,
//     );
//   }
// }


class Property {
  final String id;
  final String description;
  final String propertyType;
  final String roomType;
  final double pricePerNight;
  final String country;
  final String city;
  final int maxGuest;
  final List<String> amenities;
  final String mainPhotoUrl;
  final List<String> photoUrls;

  Property({
    required this.id,
    required this.description,
    required this.propertyType,
    required this.roomType,
    required this.pricePerNight,
    required this.country,
    required this.city,
    required this.maxGuest,
    required this.amenities,
    required this.mainPhotoUrl,
    required this.photoUrls,
  });

  static List<Property> sampleData = [
    Property(
      id: '1',
      description: 'Beautiful Villa',
      propertyType: 'Villa',
      roomType: 'Entire Place',
      pricePerNight: 200.0,
      country: 'Spain',
      city: 'Barcelona',
      maxGuest: 6,
      amenities: ['Wifi', 'Kitchen', 'Air Conditioning'],
      mainPhotoUrl: 'https://media.istockphoto.com/id/1463418047/photo/beach-huts-on-sandy-beach-hengistbury-head-dorset-uk.jpg?s=612x612&w=0&k=20&c=eeweNWO5LpiPsddgX-69NLslYM42Gnhjhh3dAzhSQKU=',
      photoUrls: ['https://media.istockphoto.com/id/474500416/photo/brighton-beach-in-melbourne-australia.jpg?s=612x612&w=0&k=20&c=Ly37S-wVPzqW_IXU0Twz4R90WDcE4AmIbrcvdUCqsvo=', 'https://media.istockphoto.com/id/1340383460/photo/colorful-beach-house-at-brighton-beach-in-melbourne-australia.jpg?s=1024x1024&w=is&k=20&c=8kkr7fZJ2HOftPMmo66ArKhS2XKaLBCAMx5AYGcLtcI='],
    ),
    Property(
      id: '2',
      description: 'Cozy Apartment',
      propertyType: 'Apartment',
      roomType: 'Private Room',
      pricePerNight: 150.0,
      country: 'France',
      city: 'Paris',
      maxGuest: 2,
      amenities: ['Wifi', 'TV', 'Heating'],
      mainPhotoUrl: 'https://media.istockphoto.com/id/1500562956/photo/costa-nova-do-prado.jpg?s=612x612&w=0&k=20&c=aeK8nNqkYCYHLx_MZLSFjFbB7qUj1MzhI32AmFH_ic4=',
      photoUrls: ['https://media.istockphoto.com/id/1454675550/photo/beach-huts-on-sandy-beach-hengistbury-head-dorset-uk.jpg?s=612x612&w=0&k=20&c=voHawIS7wFWHf45TuVTyHgBRJ8xGvar_oZhlld_jBcM=', 'https://media.istockphoto.com/id/481254842/photo/lovely-beach-huts-on-sand-dunes-and-beach-landscape.jpg?s=612x612&w=0&k=20&c=s_StzibLns6sNIyMcKwRxhr3KRe2N9BcHvcg9h7s7DY='],
    ),
     Property(
      id: '3',
      description: '',
      propertyType: 'Apartment',
      roomType: 'Private Room',
      pricePerNight: 150.0,
      country: 'France',
      city: 'Paris',
      maxGuest: 2,
      amenities: ['Wifi', 'TV', 'Heating'],
      mainPhotoUrl: 'https://images.unsplash.com/photo-1614649024145-7f847b1c803f?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      photoUrls: ['https://images.unsplash.com/photo-1614649024145-7f847b1c803f?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'https://media.istockphoto.com/id/481254842/photo/lovely-beach-huts-on-sand-dunes-and-beach-landscape.jpg?s=612x612&w=0&k=20&c=s_StzibLns6sNIyMcKwRxhr3KRe2N9BcHvcg9h7s7DY='],
    ),
    
  ];
}