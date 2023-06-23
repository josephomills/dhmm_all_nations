import 'dart:async';
import 'dart:io';

import 'package:all_nations/infrastructure/books/book.object.dart';
import 'package:all_nations/domain/books/books.facade.dart';
import 'package:all_nations/domain/books/books.failure.dart';
import 'package:all_nations/domain/core/extensions/string.ext.dart';
import 'package:all_nations/domain/core/util/util.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:vocsy_epub_viewer/epub_viewer.dart';

part 'books_event.dart';
part 'books_state.dart';
part 'books_bloc.freezed.dart';

@injectable
class BooksBloc extends Bloc<BooksEvent, BooksState> {
  final Dio _dio;
  final BooksFacade _booksFacade;
  BooksBloc(this._dio, this._booksFacade) : super(BooksState.initial()) {
    on<BooksEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        bookOpened: (e) async {
          emit(state.copyWith(isLoading: true));
          // Check if already downloaded
          var lPath = await localPath(url: e.url);

          // download and get file path, if it's not already downloaded
          lPath ??= await download(url: e.url);

          // open book
          VocsyEpub.open(lPath!);
          emit(state.copyWith(isLoading: false));
        },
        booksFetched: (e) async {
          emit(state.copyWith(isLoading: true));
          final failureOrBooks = await _booksFacade.getAllBooks();

          emit(state.copyWith(
            isLoading: false,
            booksOption: some(failureOrBooks),
          ));
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
    String path = await appDocsDir + "/books/en/all/" + url.filename;
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

  Future<String?> localPath({required String url}) async {
    String path = await appDocsDir + "/books/en/all/" + url.filename;
    return fileExists(path: path) ? path : null;
  }
}
