import 'package:all_nations/domain/core/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

IconData getPostIconData({required PostCategory category}) {
  switch (category) {
    case PostCategory.books:
      return LineAwesomeIcons.book;
    case PostCategory.hjc:
      return LineAwesomeIcons.heart;
    case PostCategory.flow:
      return LineAwesomeIcons.video_1;
    case PostCategory.conference:
      return LineAwesomeIcons.users;
    case PostCategory.advert:
      return LineAwesomeIcons.ad;
    case PostCategory.quote:
      return LineAwesomeIcons.quote_right;
    case PostCategory.donation:
      return LineAwesomeIcons.hand_holding_us_dollar;
    case PostCategory.podcast:
      return LineAwesomeIcons.podcast;
    case PostCategory.uncategorized:
    default:
      return LineAwesomeIcons.question_circle;
  }
}
