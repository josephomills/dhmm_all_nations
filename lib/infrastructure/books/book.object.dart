import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class BookObject extends ParseObject implements ParseCloneable {
  BookObject() : super(_kTableName);
  BookObject.clone() : super.clone(_kTableName);

  static const String _kTableName = 'Book';

  @override
  clone(Map<String, dynamic> map) => BookObject.clone()..fromJson(map);
  static const String kTitle = 'title';

  String? get title => get<String>(kTitle);
  set title(String? title) => set<String?>(kTitle, title);

  static const String kCover = 'cover';

  ParseFileBase? get cover => get<ParseFileBase>(kCover);
  set cover(ParseFileBase? cover) => set<ParseFileBase?>(kCover, cover);

  static const String kEpub = 'epub';

  ParseFileBase? get epub => get<ParseFileBase>(kEpub);
  set epub(ParseFileBase? epub) => set<ParseFileBase?>(kEpub, epub);
}
