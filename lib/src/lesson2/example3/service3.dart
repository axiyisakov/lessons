/*
*================================Copyright©=====================================
*Name        : service2
*Author      : Axmadjon Isaqov
*Version     : CURRENT_VERSION
*Copyright   : Created by Axmadjon Isaqov on  11:42:48 17.08.2024*© 2024 @axiydev
*Description : dart_lessons in Dart
*===============================================================================
*/

import 'package:dart_lessons/src/lesson2/example1/service.dart';
import 'package:dartz/dartz.dart';

class HelloWorldService3 {
  Either<ExceptionType, String> helloWorld(bool hasData) {
    if (hasData) {
      return Right('Hello World');
    } else {
      return Left(ExceptionType.invalidData);
    }
  }

  Option<String> helloWorld2(bool hasData) {
    if (hasData) {
      return Some('Hello World');
    } else {
      return None();
    }
  }

  Either<String, String> divide(int a, int b) {
    try {
      if (b == 0) {
        throw Exception('Division by zero');
      } else {
        return Right((a / b).toString());
      }
    } catch (e) {
      return Left(e.toString());
    }
  }
}
