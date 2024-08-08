import 'package:dart_lessons/src/lesson1/example1/service1.dart';
import 'package:faker/faker.dart';
import 'package:injectable/injectable.dart';

@singleton
class IService4 {
  final IService1 service1;
  final Faker faker;
  IService4(this.service1, @Named('Faker') this.faker);

  @override
  String toString() {
    return 'IService4 -> $service1  ${faker.person.name()}';
  }
}
