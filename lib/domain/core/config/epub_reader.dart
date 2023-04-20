import 'package:flutter/material.dart';
import 'package:vocsy_epub_viewer/epub_viewer.dart';

void initVocsyEpubViewer(BuildContext context) {
  VocsyEpub.setConfig(
    themeColor: Theme.of(context).primaryColor,
    identifier: "iosBook",
    allowSharing: true,
    enableTts: true,
    nightMode: true,
  );
}
