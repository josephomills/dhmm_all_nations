part of 'collections_bloc.dart';

@freezed
class CollectionsEvent with _$CollectionsEvent {
  const factory CollectionsEvent.vocysEpubConfigured(
      {required BuildContext context}) = _VocysEpubConfigured;
}
