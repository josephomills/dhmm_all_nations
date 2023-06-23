import 'dart:async';
import 'dart:io';

import 'package:all_nations/domain/core/util/util.dart';
import 'package:bloc/bloc.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:vocsy_epub_viewer/epub_viewer.dart';

part 'collection_event.dart';
part 'collection_state.dart';
part 'collection_bloc.freezed.dart';

@injectable
class CollectionBloc extends Bloc<CollectionEvent, CollectionState> {
  final Dio _dio;
  CollectionBloc(this._dio) : super(CollectionState.initial()) {
    on<CollectionEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        bookOpened: (e) async {
          //Check if already downloaded
          var lPath = await localPath(url: e.url);

          // download and get file path, if it's not already downloaded
          lPath ??= await download(url: e.url);

          // open book
          VocsyEpub.open(lPath!);
        },
      );
    });
  }

  Future<String?> download({required String url}) async {
    if (Platform.isAndroid || Platform.isIOS) {
      String? firstPart;
      final deviceInfoPlugin = DeviceInfoPlugin();
      final deviceInfo = await deviceInfoPlugin.deviceInfo;
      final allInfo = deviceInfo.data;
      if (allInfo['version']["release"].toString().contains(".")) {
        int indexOfFirstDot = allInfo['version']["release"].indexOf(".");
        firstPart = allInfo['version']["release"].substring(0, indexOfFirstDot);
      } else {
        firstPart = allInfo['version']["release"];
      }
      int intValue = int.parse(firstPart!);
      if (intValue >= 13) {
        final path = await startDownload(url: url);
        return path;
      } else {
        if (await Permission.storage.isGranted) {
          await Permission.storage.request();
          final path = await startDownload(url: url);
          return path;
        } else {
          final path = await startDownload(url: url);
          return path;
        }
      }
    }
    return null;
  }

  Future<String?> startDownload({required String url}) async {
    Directory? appDocDir = Platform.isAndroid
        ? await getExternalStorageDirectory()
        : await getApplicationDocumentsDirectory();

    String path = appDocDir!.path + url.split("epubs/").last;
    File file = File(path);

    await file.create(recursive: true);
    final resp = await _dio.download(
      url,
      path,
      deleteOnError: true,
      onReceiveProgress: (receivedBytes, totalBytes) {},
    );
    if (resp.statusCode == 200) {
      return path;
    } else {
      return null;
    }
  }

  Future<bool> alreadyDownloaded({required String url}) async {
    Directory? appDocDir = Platform.isAndroid
        ? await getExternalStorageDirectory()
        : await getApplicationDocumentsDirectory();

    String path = appDocDir!.path + url.split("epubs/").last;
    return fileExists(path: path);
  }

  Future<String?> localPath({required String url}) async {
    Directory? appDocDir = Platform.isAndroid
        ? await getExternalStorageDirectory()
        : await getApplicationDocumentsDirectory();

    String path = appDocDir!.path + url.split("epubs/").last;
    return fileExists(path: path) ? path : null;
  }
}
