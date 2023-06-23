import 'package:all_nations/domain/conference/conference.facade.dart';
import 'package:dartz/dartz.dart';
import 'package:all_nations/infrastructure/conference/conference.object.dart';
import 'package:all_nations/domain/conference/conference.failure.dart';
import 'package:injectable/injectable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

@Injectable(as: ConferenceFacade)
class ConferenceRepo implements ConferenceFacade {
  @override
  Future<Either<ConferenceFailure, List<ConferenceObject>>>
      getAllConferences() async {
    final query = QueryBuilder(ConferenceObject())
      ..includeObject([ConferenceObject.kFlyer])
      ..orderByDescending("updatedAt");
    final resp = await query.query();

    if (resp.success) {
      return Right(
        // resp.results!.map((obj) => obj as ConferenceObject).toList()
        resp.results!.cast<ConferenceObject>(),
      );
    }

    return Left(ConferenceFailure.serverError(message: resp.error!.message));
  }

  @override
  Future<Either<ConferenceFailure, List<ConferenceObject>>>
      getConferencesByCountry({required String country}) async {
    final query = QueryBuilder(ConferenceObject())
      ..whereEqualTo(ConferenceObject.kCountry, country)
      ..includeObject([ConferenceObject.kFlyer])
      ..orderByDescending("updatedAt");
    final resp = await query.query();

    if (resp.success) {
      return Right(
          resp.results!.map((obj) => obj as ConferenceObject).toList());
    }

    return Left(ConferenceFailure.serverError(message: resp.error!.message));
  }

  @override
  Future<Either<ConferenceFailure, List<ConferenceObject>>>
      getConferencesByTour({required String tour}) {
    // TODO: implement getConferencesByTour
    throw UnimplementedError();
  }
}
