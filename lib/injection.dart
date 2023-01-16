import 'package:get_it/get_it.dart';
import 'cubit/counter_cubit.dart';
import 'utils/router_observer.dart';
import 'common/navigation.dart';

final getIt = GetIt.instance;

void configureDependencies() {
    // TODO: đăng kí các dependency trong này
    getIt.registerSingleton(CounterCubit());
    /// [Navigation]
    getIt.registerLazySingleton<Navigation>(() => NavigationImpl());

    /// [Navigator util]
    getIt.registerSingleton(AppRouteObserver());
}
