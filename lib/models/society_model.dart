import 'package:flutter/foundation.dart';

class Society {
  int? cityId;
  String? cityName;
  int? societyId;
  String? societyName;
  Society();

  Society.fromJson(Map<String, dynamic> json) {
    try {
      cityId = json['city_id'] != null ? int.parse(json['city_id'].toString()) : null;
      cityName = json['city_name'];
      societyId = json['society_id'] != null ? int.parse(json['society_id'].toString()) : null;
      societyName = json['society_name'];
    } catch (e) {
      debugPrint("Exception - society_model.dart - Society.fromJson():$e");
    }
  }
}
