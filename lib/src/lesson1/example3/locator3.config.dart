// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:faker/faker.dart' as _i658;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../example1/service1.dart' as _i383;
import 'module.dart' as _i946;
import 'service4.dart' as _i910;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.lazySingleton<_i383.IService1>(() => _i383.IService1());
    gh.singleton<_i658.Faker>(
      () => appModule.faker,
      instanceName: 'Faker',
    );
    gh.singleton<_i910.IService4>(() => _i910.IService4(
          gh<_i383.IService1>(),
          gh<_i658.Faker>(instanceName: 'Faker'),
        ));
    return this;
  }
}

class _$AppModule extends _i946.AppModule {}
