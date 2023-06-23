import 'package:all_nations/infrastructure/home/post.object.dart';
import 'package:all_nations/presentation/widgets/skeleton.conference.widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ImageOnlyPostWidget extends StatelessWidget {
  const ImageOnlyPostWidget({Key? key, required this.post}) : super(key: key);

  final PostObject post;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return CachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl: post.urls!.first,
          width: constraints.maxWidth,
          height: (9 / 16) * constraints.maxWidth,
          placeholder: (context, url) => SkeletonConferenceWidget(
            width: ResponsiveWrapper.of(context).scaledWidth,
          ),
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
