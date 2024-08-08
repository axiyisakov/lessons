import 'package:dart_lessons/src/lesson1/example3/locator3.dart';
import 'package:dart_lessons/src/lesson1/example3/service4.dart';

void main(List<String> args) {
  configureDependencies();
  print(getIt<IService4>());
}
