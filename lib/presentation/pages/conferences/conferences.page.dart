import 'package:all_nations/presentation/widgets/appbar.widget.dart';
import 'package:all_nations/presentation/widgets/conference.widget.dart';
import 'package:all_nations/presentation/widgets/skeleton.conference.widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// Conferences Page
@RoutePage()
class ConferencesPage extends StatelessWidget {
  const ConferencesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      physics: const BouncingScrollPhysics(),
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [const AppBarWidget()];
      },
      body: ListView(
        primary: false,
        padding: const EdgeInsets.only(bottom: 32),
        children: [
          RectangleConferenceWidget(
            width: ResponsiveWrapper.of(context).scaledWidth,
            roundCorners: false,
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Argentina",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (_, x) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SkeletonConferenceWidget(
                    width: 150,
                    square: true,
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Asia Tour",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (_, x) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: RectangleConferenceWidget(
                    width: 150,
                    square: true,
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Africa Tour",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (_, x) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: RectangleConferenceWidget(
                    width: 150,
                    square: true,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
