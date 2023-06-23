import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @injectable
  GlobalKey<FormState> get formKey => GlobalKey<FormState>();

  @injectable
  Dio get dio => Dio();
}
