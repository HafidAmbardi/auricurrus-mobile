import 'package:cloud_firestore/cloud_firestore.dart';

class dbUser {
  String name;
  String email;
  String hearingLossLevelLeft;
  String hearingLossLevelRight;
  int eventsHappened;
  int mileage;
  int tripTime;
  bool darkMode;
  Timestamp createdOn;
  Timestamp updatedOn;

  dbUser({
    required this.name,
    required this.email,
    required this.hearingLossLevelLeft,
    required this.hearingLossLevelRight,
    required this.eventsHappened,
    required this.mileage,
    required this.tripTime,
    required this.darkMode,
    required this.createdOn,
    required this.updatedOn,
  });

  dbUser.fromJson(Map<String, Object?> json)
      : this(
          name: json['name'] as String,
          email: json['email'] as String,
          hearingLossLevelLeft: json['hearingLossLevelLeft'] as String,
          hearingLossLevelRight: json['hearingLossLevelRight'] as String,
          eventsHappened: json['eventsHappened'] as int,
          mileage: json['mileage'] as int,
          tripTime: json['tripTime'] as int,
          darkMode: json['darkMode'] as bool,
          createdOn: json['createdOn'] as Timestamp,
          updatedOn: json['updatedOn'] as Timestamp,
        );

  dbUser copyWith({
    String? name,
    String? email,
    String? hearingLossLevelLeft,
    String? hearingLossLevelRight,
    int? eventsHappened,
    int? mileage,
    int? tripTime,
    bool? darkMode,
    Timestamp? createdOn,
    Timestamp? updatedOn,
  }) {
    return dbUser(
        name: name ?? this.name,
        email: email ?? this.email,
        hearingLossLevelLeft: hearingLossLevelLeft ?? this.hearingLossLevelLeft,
        hearingLossLevelRight:
            hearingLossLevelRight ?? this.hearingLossLevelRight,
        eventsHappened: eventsHappened ?? this.eventsHappened,
        mileage: mileage ?? this.mileage,
        tripTime: tripTime ?? this.tripTime,
        darkMode: darkMode ?? this.darkMode,
        createdOn: createdOn ?? this.createdOn,
        updatedOn: updatedOn ?? this.updatedOn);
  }

  Map<String, Object?> toJson() {
    return {
      'name': name,
      'email': email,
      'hearingLossLevelLeft': hearingLossLevelLeft,
      'hearingLossLevelRight': hearingLossLevelRight,
      'eventsHappened': eventsHappened,
      'mileage': mileage,
      'tripTime': tripTime,
      'darkMode': darkMode,
      'createdOn': createdOn,
      'updatedOn': updatedOn,
    };
  }

  dynamic operator [](String key) {
    switch (key) {
      case 'name':
        return name;
      case 'email':
        return email;
      case 'hearingLossLevelLeft':
        return hearingLossLevelLeft;
      case 'hearingLossLevelRight':
        return hearingLossLevelRight;
      case 'eventsHappened':
        return eventsHappened;
      case 'mileage':
        return mileage;
      case 'tripTime':
        return tripTime;
      case 'darkMode':
        return darkMode;
      case 'createdOn':
        return createdOn;
      case 'updatedOn':
        return updatedOn;
      default:
        throw ArgumentError('Invalid key: $key');
    }
  }
}