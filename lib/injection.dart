import 'package:get_it/get_it.dart';
// import './counter/counter.dart';

final getIt = GetIt.instance;

void configureDependencies() {
    // TODO: đăng kí các dependency trong này
    getIt.registerSingleton(CounterCubit());
}
