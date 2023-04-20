import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class RectangleConferenceWidget extends StatelessWidget {
  const RectangleConferenceWidget({
    Key? key,
    required this.width,
    this.square = false,
    this.roundCorners = true,
  }) : super(key: key);

  final double width;
  final bool square;
  final bool roundCorners;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: square ? width : (9 / 16) * width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: CachedNetworkImageProvider(dotenv.get("GOOD_FRIDAY")),
          fit: BoxFit.cover,
        ),
        borderRadius:
            roundCorners ? BorderRadius.circular(12) : BorderRadius.zero,
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 8,
            right: 8,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              padding: const EdgeInsets.all(4),
              child: Text(
                "10:12",
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
