import 'package:all_nations/domain/conference/conference.failure.dart';
import 'package:all_nations/infrastructure/conference/conference.object.dart';
import 'package:dartz/dartz.dart';

abstract class ConferenceFacade {
  Future<Either<ConferenceFailure, List<ConferenceObject>>> getAllConferences();
  Future<Either<ConferenceFailure, List<ConferenceObject>>>
      getConferencesByTour({required String tour});
  Future<Either<ConferenceFailure, List<ConferenceObject>>>
      getConferencesByCountry({required String country});
}
