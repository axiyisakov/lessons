import 'package:injectable/injectable.dart';

@lazySingleton
class IService1 {
  @override
  String toString() => 'IService1';
}

class IService2 {
  IService1 service1;
  IService2(this.service1);
  @override
  String toString() => 'IService2 -> $service1';
}
