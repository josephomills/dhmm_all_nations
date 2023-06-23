import 'package:all_nations/application/conference/conference_bloc.dart';
import 'package:all_nations/domain/conference/conference.failure.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:all_nations/presentation/widgets/appbar.widget.dart';
import 'package:all_nations/presentation/widgets/conference.widget.dart';
import 'package:all_nations/presentation/widgets/empty_state.widget.dart';
import 'package:all_nations/presentation/widgets/loader.widget.dart';
import 'package:all_nations/presentation/widgets/snackbar.widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// Conferences Page
@RoutePage()
class ConferencesPage extends StatelessWidget implements AutoRouteWrapper {
  const ConferencesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      physics: const BouncingScrollPhysics(),
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [const AppBarWidget()];
      },
      body: RefreshIndicator(
        onRefresh: () async =>
            context.read<ConferenceBloc>().add(const ConferenceEvent.started()),
        child: BlocConsumer<ConferenceBloc, ConferenceState>(
          listener: (context, state) {
            if (state.failureOrConferencesOption.isSome()) {
              final failureOrConferences = state.failureOrConferencesOption
                  .getOrElse(() => const Left(ConferenceFailure.serverError()));

              failureOrConferences.fold(
                (l) => ScaffoldMessenger.of(context).showSnackBar(
                    snackBarWidget(text: l.message!, context: context)),
                (r) => null,
              );
            }
          },
          builder: (context, state) {
            final failureOrConferences = state.failureOrConferencesOption
                .getOrElse(() => const Right([]));

            var allConferences = failureOrConferences.getOrElse(() => []);

            return Stack(
              children: [
                // show empty state
                if (state.failureOrConferencesOption.isNone() &&
                    !state.isLoading)
                  const EmptyStateWidget(
                    asset:
                        "assets/images/illustrations/undraw_conference_call.png",
                    text:
                        "No conference available at the moment. Please come back later.",
                  ),
                if (state.failureOrConferencesOption.isSome())
                  ListView(
                    primary: false,
                    padding: const EdgeInsets.only(bottom: 32),
                    children: [
                      RectangleConferenceWidget(
                        width: ResponsiveWrapper.of(context).scaledWidth,
                        roundCorners: false,
                        conference: allConferences.firstWhere(
                          (c) => c.featured == true,
                          orElse: () => allConferences.first,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Argentina Tour",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        child: ListView.builder(
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: allConferences.length,
                          itemBuilder: (_, x) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RectangleConferenceWidget(
                                width: 150,
                                square: true,
                                conference: allConferences[x],
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
                          itemCount: allConferences.length,
                          itemBuilder: (_, x) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RectangleConferenceWidget(
                                width: 150,
                                square: true,
                                conference: allConferences[x],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                if (state.isLoading) const LoaderWidget(),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ConferenceBloc>()..add(const ConferenceEvent.started()),
      child: this,
    );
  }
}
