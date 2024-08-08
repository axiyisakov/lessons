import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'locator3.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
    initializerName: 'init', // default
    preferRelativeImports: true, // default
    asExtension: true, // default
    generateForDir: ['lib', 'src', 'lesson1', 'example3'])
void configureDependencies() => getIt.init();
