import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class ConferenceObject extends ParseObject implements ParseCloneable {
  ConferenceObject() : super(_kTableName);
  ConferenceObject.clone() : super.clone(_kTableName);

  static const String _kTableName = 'Conference';

  @override
  clone(Map<String, dynamic> map) => ConferenceObject.clone()..fromJson(map);

  static const String kTitle = 'title';

  String? get title => get<String>(kTitle);
  set title(String? title) => set<String?>(kTitle, title);

  static const String kDate = 'date';

  DateTime? get date => get<DateTime>(kDate);
  set date(DateTime? date) => set<DateTime?>(kDate, date);

  static const String kFlyer = 'flyer';

  ParseFile? get flyer => get<ParseFile>(kFlyer);
  set flyer(ParseFile? flyer) => set<ParseFile?>(kFlyer, flyer);

  static const String kDescription = 'description';

  String? get description => get<String>(kDescription);
  set description(String? description) =>
      set<String?>(kDescription, description);

  static const String kCountry = 'country';

  String? get country => get<String>(kCountry);
  set country(String? country) => set<String?>(kCountry, country);

  static const String kVideoUrl = 'videoUrl';

  String? get videoUrl => get<String>(kVideoUrl);
  set videoUrl(String? videoUrl) => set<String?>(kVideoUrl, videoUrl);

  static const String kFeatured = 'featured';

  bool? get featured => get<bool>(kFeatured);
  set featured(bool? featured) => set<bool?>(kFeatured, featured);
}
