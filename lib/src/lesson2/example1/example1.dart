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

void main() {
  ///service class
  final HelloWorldService service = HelloWorldService();
  final MyRecord record = service.helloWorld(true);

  if (record.exceptionType == ExceptionType.validData) {
    print("Data::${record.data}");
  } else {
    print('Data::Invalid data');
  }

  final MyRecord record2 = service.helloWorld(false);
  if (record2.exceptionType == ExceptionType.validData) {
    print("Data::${record2.data}");
  } else {
    print('Data::Invalid data');
  }
}
