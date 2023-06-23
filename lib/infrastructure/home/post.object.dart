import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class PostObject extends ParseObject implements ParseCloneable {
  PostObject() : super(_kTableName);
  PostObject.clone() : super.clone(_kTableName);

  static const String _kTableName = 'Post';

  @override
  clone(Map<String, dynamic> map) => PostObject.clone()..fromJson(map);

  static const String kCategory = 'category';

  String? get category => get<String>(kCategory);
  set category(String? category) => set<String?>(kCategory, category);

  static const String kTitle = 'title';

  String? get title => get<String>(kTitle);
  set title(String? title) => set<String?>(kTitle, title);

  static const String kUrls = 'urls';

  List<dynamic>? get urls => get<List<dynamic>>(kUrls);
  set urls(List<dynamic>? urls) => set<List<dynamic>?>(kUrls, urls);

  static const String kCaption = 'caption';

  String? get caption => get<String>(kCaption);
  set caption(String? caption) => set<String?>(kCaption, caption);

  static const String kLikes = 'likes';

  int? get likes => get<int>(kLikes);
  set likes(int? likes) => set<int?>(kLikes, likes);

  static const String kIsLive = 'isLive';

  bool? get isLive => get<bool>(kIsLive);
  set isLive(bool? isLive) => set<bool?>(kIsLive, isLive);
}
