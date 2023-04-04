import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FormModule {
  @injectable
  GlobalKey<FormState> get formKey => GlobalKey<FormState>();
}

@module
abstract class SharedPrefsModule {}
