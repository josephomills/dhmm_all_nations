import 'package:all_nations/domain/core/enums/enums.dart';

extension PostCategoryExt on PostCategory {
  String get formattedName {
    switch (this) {
      case PostCategory.books:
        return "Books";
      case PostCategory.advert:
        return "Ad";
      case PostCategory.flow:
        return "FLOW Prayer";
      case PostCategory.hjc:
        return "Healing Jesus Campaign";
      case PostCategory.uncategorized:
        return "Uncategorized";
      case PostCategory.conference:
        return "Conference";
      case PostCategory.quote:
        return "Quote";
      case PostCategory.donation:
        return "Donation";
      case PostCategory.podcast:
        return "Podcast";
    }
  }
}
