import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final di = GetIt.I;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() => di.call();
