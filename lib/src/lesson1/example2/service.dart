import 'package:dart_lessons/src/lesson1/example1/service1.dart';
import 'package:dart_lessons/src/lesson1/example2/locator.dart';

class IService3 {
  final IService1 service1;
  final IService2 service2;
  IService3({IService1? service1, IService2? service2})
      : service1 = service1 ?? locator<IService1>(),
        service2 = service2 ?? locator<IService2>(instanceName: 'service2');
  @override
  String toString() {
    return 'IService3 -> $service1, $service2';
  }
}
