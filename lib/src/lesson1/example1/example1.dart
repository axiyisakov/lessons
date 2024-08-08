import 'service1.dart';

void main() {
  final service = IService1();
  final service2 = IService2(service);
  print(service2);
}
