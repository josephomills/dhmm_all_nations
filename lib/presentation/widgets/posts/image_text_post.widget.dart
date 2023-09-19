import 'package:all_nations/domain/core/extensions/post_category.ext.dart';
import 'package:all_nations/domain/core/extensions/string.ext.dart';
import 'package:all_nations/domain/core/util/util.dart';
import 'package:all_nations/infrastructure/home/post.object.dart';
import 'package:all_nations/presentation/widgets/posts/post_icon.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:moment_dart/moment_dart.dart';
import 'package:multi_image_layout/multi_image_layout.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageTextPostWidget extends StatelessWidget {
  const ImageTextPostWidget({
    Key? key,
    required this.post,
  }) : super(key: key);

  final PostObject post;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // if the post has a link, do something (e.g. open book link on DHMM website)
      },
      child: Card(
        color: Theme.of(context).colorScheme.secondary,
        child: ListView(
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 12,
          ),
          children: [
            // Title row
            buildTitleRow(context),
            const SizedBox(height: 8),
            // Caption
            if (post.caption != null && post.caption!.isNotEmpty)
              buildCaption(context),
            const SizedBox(height: 8),
            // Image
            LayoutBuilder(
              builder: (context, constraints) {
                return MultiImageViewer(
                  backgroundColor:
                      Theme.of(context).colorScheme.secondaryContainer,
                  images: post.urls!.cast<String>(),
                  width: constraints.maxWidth,
                  height: (9 / 16) * constraints.maxWidth,
                  textStyle: Theme.of(context).textTheme.titleLarge!,
                );
              },
            ),
            const SizedBox(height: 8),
            buildFooterRow(context),
          ],
        ),
      ),
    );
  }

  Widget buildCaption(BuildContext context) {
    return Linkify(
      text: post.caption!,
      linkifiers: const [UrlLinkifier(), EmailLinkifier()],
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      linkStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Theme.of(context).colorScheme.onSecondary,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.solid,
            decorationColor: Theme.of(context).colorScheme.onSecondary,
          ),
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Theme.of(context).colorScheme.onSecondary,
          ),
      onOpen: (link) async {
        await launchUrl(Uri.parse(link.url));
      },
    );
  }

  Widget buildFooterRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          Moment(post.updatedAt!).fromNow(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(LineAwesomeIcons.thumbs_up,
                  color: Theme.of(context).colorScheme.onSecondary),
            ),
            Text(
              formatNumLikes(number: post.likes!),
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
            ),
            const SizedBox(width: 8),
            IconButton(
              onPressed: () {},
              icon: Icon(LineAwesomeIcons.share,
                  color: Theme.of(context).colorScheme.onSecondary),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildTitleRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor:
                    Theme.of(context).colorScheme.secondaryContainer,
                radius: 24,
                child: Icon(
                  getPostIconData(category: post.category!.postCategory),
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    post.title!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                  ),
                  //Category
                  Text(
                    post.category!.postCategory.formattedName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // Options
        IconButton(
          onPressed: () {},
          icon: Icon(
            LineAwesomeIcons.horizontal_ellipsis,
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
      ],
    );
  }
}
