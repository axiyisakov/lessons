/*
*================================Copyright©=====================================
*Name        : service
*Author      : Axmadjon Isaqov
*Version     : CURRENT_VERSION
*Copyright   : Created by Axmadjon Isaqov on  11:27:02 17.08.2024*© 2024 @axiydev
*Description : dart_lessons in Dart
*===============================================================================
*/

import 'package:dartz/dartz.dart';

typedef MyRecord = ({String? exception, num? data});

abstract interface class ICalculator {
  MyRecord add(num a, num b);
  Either<String, num> addUsingEither(num a, num b);
  Option<num> addUsingOption(num a, num b);

  Option<num> get pi;
}

class Calculator implements ICalculator {
  @override
  MyRecord add(num a, num b) {
    try {
      return (exception: null, data: a + b);
    } catch (e) {
      return (exception: e.toString(), data: null);
    }
  }

  @override
  Option<num> addUsingOption(num a, num b) {
    try {
      return Some(a + b);
    } catch (e) {
      return None();
    }
  }

  @override
  Either<String, num> addUsingEither(num a, num b) {
    try {
      return Right(a + b);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Option<num> get pi {
    try {
      return Some(3.14);
    } catch (e) {
      return None();
    }
  }
}
