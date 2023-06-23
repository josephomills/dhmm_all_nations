import 'package:all_nations/domain/core/enums/enums.dart';
import 'package:all_nations/domain/core/extensions/string.ext.dart';
import 'package:all_nations/infrastructure/home/post.object.dart';
import 'package:all_nations/presentation/widgets/posts/image_text_post.widget.dart';
import 'package:all_nations/presentation/widgets/posts/video_post.widget.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key? key,
    required this.post,
  }) : super(key: key);

  final PostObject post;

  @override
  Widget build(BuildContext context) {
    switch (post.category!.postCategory) {
      case PostCategory.conference:
      case PostCategory.books:
        return ImageTextPostWidget(post: post);
      case PostCategory.flow:
        return VideoPostWidget(post: post);
      case PostCategory.hjc:
        return ImageTextPostWidget(post: post);
      case PostCategory.quote:
        return ImageTextPostWidget(post: post);
      case PostCategory.donation:
      case PostCategory.advert:
        return ImageTextPostWidget(post: post);
      case PostCategory.podcast:
        return ImageTextPostWidget(post: post);
      case PostCategory.uncategorized:
        return ImageTextPostWidget(post: post);
    }
  }
}
