part of 'collection_bloc.dart';

@freezed
class CollectionState with _$CollectionState {
  const factory CollectionState({required bool isLoading}) = _CollectionState;

  factory CollectionState.initial() => const CollectionState(isLoading: false);
}
