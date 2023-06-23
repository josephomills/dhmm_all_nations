import 'package:flutter/material.dart';
import 'package:vocsy_epub_viewer/epub_viewer.dart';

void initVocsyEpubViewer(BuildContext context) {
  VocsyEpub.setConfig(
    themeColor: Theme.of(context).colorScheme.tertiary,
    identifier: "iosBook",
    allowSharing: true,
    enableTts: true,
    nightMode: Theme.of(context).brightness == Brightness.dark,
  );
  // VocsyEpub.locatorStream.listen((locator) {
  //   print('LOCATOR: ${EpubLocator.fromJson(jsonDecode(locator))}');
  //   // emit(state.copyWith());
  // });
}
