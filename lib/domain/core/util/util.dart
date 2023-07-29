import 'dart:io';

import 'package:all_nations/domain/core/extensions/string.ext.dart';
import 'package:bye_bye_localization/bye_bye_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

bool fileExists({required String path}) {
  return File(path).existsSync();
}

Future<String> get appDocsDir async {
  Directory? appDocDir = Platform.isAndroid
      ? await getExternalStorageDirectory()
      : await getApplicationDocumentsDirectory();

  return appDocDir!.path;
}

Future<bool> downloaded({required String url}) async {
  String path = await appDocsDir + "/books/en/all/" + url.filename;
  return fileExists(path: path);
}

/// Method to unfocus when tapped
unfocus(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus) {
    currentFocus.unfocus();
  }
}

bool get isDarkMode {
  return SchedulerBinding.instance.window.platformBrightness == Brightness.dark;
}

String formatNumLikes({required num number}) {
  final formatter = NumberFormat.compact(locale: "en_US");
  return formatter.format(number);
}

initTranslation(String translateTo) async {
  await TranslationManager().init(
    originLanguage: Languages.ENGLISH,
    translateToLanguage: translateTo,
  );
}

downloadTranslations() async {
  ["en", "fr", "pt", "es"].forEach(initTranslation);
}
