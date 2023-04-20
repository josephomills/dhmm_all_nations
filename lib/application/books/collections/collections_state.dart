part of 'collections_bloc.dart';

@freezed
class CollectionsState with _$CollectionsState {
  const factory CollectionsState() = _CollectionsState;

  factory CollectionsState.initial() => const CollectionsState();
}
