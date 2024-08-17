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

abstract interface class ICalculatorWrapper {
  MyRecord divide(num a, num b);
  Either<String, num> divideUsingEither(num a, num b);
  Option<num> divideUsingOption(num a, num b);
  Option<num> get pi;
}

class CalculatorWrapper implements ICalculatorWrapper {
  final Calculator calculator;
  CalculatorWrapper() : calculator = Calculator();
  @override
  MyRecord divide(num a, num b) {
    try {
      final result = calculator.divide(a, b);
      return (exception: null, data: result);
    } catch (e) {
      return (exception: e.toString(), data: null);
    }
  }

  @override
  Option<num> divideUsingOption(num a, num b) {
    try {
      final result = calculator.divide(a, b);
      return Some(result);
    } catch (e) {
      return None();
    }
  }

  @override
  Either<String, num> divideUsingEither(num a, num b) {
    try {
      final result = calculator.divide(a, b);
      return Right(result);
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

class Calculator {
  num divide(num a, num b) {
    if (b == 0) {
      throw Exception('b should not be zero');
    } else {
      return a / b;
    }
  }
}
