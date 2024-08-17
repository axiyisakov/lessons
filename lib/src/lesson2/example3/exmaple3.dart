/*
*================================Copyright©=====================================
*Name        : exmaple3
*Author      : Axmadjon Isaqov
*Version     : CURRENT_VERSION
*Copyright   : Created by Axmadjon Isaqov on  11:42:36 17.08.2024*© 2024 @axiydev
*Description : dart_lessons in Dart
*===============================================================================
*/

import 'package:dart_lessons/src/lesson2/example1/service.dart';
import 'package:dartz/dartz.dart';

/// [dartz] paketiga oddiy misollar
void main() {
  final ICalculatorWrapper service = CalculatorWrapper();

  final Option<num> result1 = service.divideUsingOption(23, 2.5);

  final incrementedResult1 = result1.map((value) => value + 1);
  final doubledResult1 = result1.flatMap((value) => Some(value * 2));

  print('incrementedResult1: ${incrementedResult1.getOrElse(() => -1)}');
  print('doubledResult1:${doubledResult1.getOrElse(() => -1)}');
}
