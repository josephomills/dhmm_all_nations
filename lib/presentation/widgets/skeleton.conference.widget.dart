import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class SkeletonConferenceWidget extends StatelessWidget {
  const SkeletonConferenceWidget({
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
    return SizedBox(
        width: width,
        height: square ? width : (9 / 16) * width,
        child: Stack(
          children: [
            SkeletonAvatar(
              style: SkeletonAvatarStyle(
                width: width,
                height: square ? width : (9 / 16) * width,
                borderRadius: roundCorners
                    ? BorderRadius.circular(16)
                    : BorderRadius.zero,
              ),
            ),
            Positioned(
              bottom: 8,
              right: 8,
              child: Container(
                width: 32,
                height: 20,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
                padding: const EdgeInsets.all(4),
                // child: SkeletonLine(
                //   style: SkeletonLineStyle(
                //     width: 16,
                //     height: 8,
                //     alignment: Alignment.center,
                //     borderRadius: BorderRadius.circular(2),
                //   ),
                // ),
              ),
            ),
          ],
        ));
  }
}
