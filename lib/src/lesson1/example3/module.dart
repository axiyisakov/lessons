import 'package:faker/faker.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @Named('Faker')
  @singleton
  Faker get faker => Faker();
}
