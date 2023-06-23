import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class HomeCarouselObject extends ParseObject implements ParseCloneable {
  HomeCarouselObject() : super(_kTableName);
  HomeCarouselObject.clone() : super.clone(_kTableName);

  static const String _kTableName = 'HomeCarousel';

  @override
  clone(Map<String, dynamic> map) => HomeCarouselObject.clone()..fromJson(map);

  static const String kImage = 'image';

  ParseFile? get image => get<ParseFile>(kImage);
  set image(ParseFile? image) => set<ParseFile?>(kImage, image);
}
