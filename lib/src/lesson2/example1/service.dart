/*
*================================Copyright©=====================================
*Name        : service
*Author      : Axmadjon Isaqov
*Version     : CURRENT_VERSION
*Copyright   : Created by Axmadjon Isaqov on  11:27:02 17.08.2024*© 2024 @axiydev
*Description : dart_lessons in Dart
*===============================================================================
*/

enum ExceptionType { invalidData, validData }

typedef MyRecord = ({ExceptionType exceptionType, String? data});

class HelloWorldService {
  MyRecord helloWorld(bool hasData) {
    if (hasData) {
      return (exceptionType: ExceptionType.validData, data: 'Hello World');
    } else {
      return (exceptionType: ExceptionType.invalidData, data: null);
    }
  }
}
