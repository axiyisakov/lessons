/*
*================================Copyright©=====================================
*Name        : lesson2
*Author      : Axmadjon Isaqov
*Version     : CURRENT_VERSION
*Copyright   : Created by Axmadjon Isaqov on  11:27:07 17.08.2024*© 2024 @axiydev
*Description : dart_lessons in Dart
*===============================================================================
*/
import 'package:dart_lessons/src/lesson2/example1/service.dart';
import 'package:dartz/dartz.dart';

void main() {
  ///service class
  final ICalculatorWrapper service = CalculatorWrapper();
  final MyRecord record = service.divide(78, 10);

  if (record.exception == null) {
    print("Data::${record.data}");
  } else {
    print('Data::Invalid data');
  }

  final Either<String, num> result = service.divideUsingEither(23, -2);
  result.fold((error) {
    print('Error::$error');
  }, (data) {
    print('Data::$data');
  });

  final Option<num> result2 = service.divideUsingOption(30, 0);
  result2.fold(() {
    print('Data::b nol bo\'lishi mumkin emas');
  }, (data) {
    print('Data::$data');
  });

  final Option<num> piOrNull = service.pi;

  final num pi = piOrNull.getOrElse(() => -1);
  print('pi::$pi');
}
