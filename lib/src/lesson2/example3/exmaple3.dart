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
import 'package:dart_lessons/src/lesson2/example3/service3.dart';
import 'package:dartz/dartz.dart';

/// [dartz] paketiga oddiy misollar
void main() {
  final HelloWorldService3 service = HelloWorldService3();

  ///[Either] classidan foydalanamiz
  final Either<ExceptionType, String> dataOrError3 = service.helloWorld(true);
  final result5 = dataOrError3.fold((error) => error, (data) => data);
  print('result5: $result5');

  final Either<ExceptionType, String> dataOrError4 = service.helloWorld(false);
  final result6 = dataOrError4.fold((error) => error, (data) => data);
  print('result6: $result6');

  ///[Option] classidan foydalanamiz
  final Option<String> dataOrError5 = service.helloWorld2(true);
  final result7 = dataOrError5.fold(() => 'No data', (data) => data);
  print('result7: $result7');

  final Option<String> dataOrError6 = service.helloWorld2(false);
  final result8 = dataOrError6.getOrElse(() => 'No data');
  print('result8: $result8');

  ///[Either] classidan foydalanamiz
  final Either<String, String> dataOrError7 = service.divide(10, 2);
  final result9 = dataOrError7.fold((error) => error, (data) => data);
  print('result9: $result9');

  final Either<String, String> dataOrError8 = service.divide(10, 0);
  final result10 = dataOrError8.fold((error) => error, (data) => data);
  print('result10: $result10');
}
