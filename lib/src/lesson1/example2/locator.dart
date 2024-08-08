import 'package:dart_lessons/src/lesson1/example1/service1.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerSingleton<IService1>(IService1());
  locator.registerSingleton<IService2>(IService2(locator<IService1>()),
      instanceName: 'service2');
}
