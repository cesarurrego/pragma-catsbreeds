import 'package:flutter/material.dart';
import 'package:pragma_test/app/app.dart';
import 'package:pragma_test/app/di/di.dart';

void main() {
  ServiceLocator.init();

  runApp(const PragmaTestApp());
}
