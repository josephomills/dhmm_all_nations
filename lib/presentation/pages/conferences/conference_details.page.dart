import 'package:all_nations/application/conference/details/conference_details_bloc.dart';
import 'package:all_nations/infrastructure/conference/conference.object.dart';
import 'package:all_nations/presentation/widgets/appbar.widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ConferenceDetailsPage extends StatelessWidget {
  const ConferenceDetailsPage({Key? key, required this.conference})
      : super(key: key);

  final ConferenceObject conference;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      physics: const BouncingScrollPhysics(),
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [const AppBarWidget()];
      },
      body: BlocConsumer<ConferenceDetailsBloc, ConferenceDetailsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Container();
        },
      ),
    );
  }
}
