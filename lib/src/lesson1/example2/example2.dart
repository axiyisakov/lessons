import 'package:dart_lessons/src/lesson1/example2/locator.dart';
import 'package:dart_lessons/src/lesson1/example2/service.dart';

void main(List<String> args) {
  setupLocator();
  final service3 = IService3();
  print(service3);
}
