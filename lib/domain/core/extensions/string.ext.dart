import 'package:all_nations/domain/core/enums/enums.dart';

extension StringExt on String {
  String get filename {
    int index = indexOf("_");
    return substring(index + 1);
  }

  PostCategory get postCategory {
    switch (this) {
      case "hjc":
        return PostCategory.hjc;
      case "advert":
        return PostCategory.advert;
      case "flow":
        return PostCategory.flow;
      case "books":
        return PostCategory.books;
      case "uncategorized":
        return PostCategory.uncategorized;
      case "donation":
        return PostCategory.donation;
      case "quote":
        return PostCategory.quote;
      case "conference":
        return PostCategory.conference;
      case "podcast":
        return PostCategory.podcast;
      default:
        return PostCategory.uncategorized;
    }
  }
}
