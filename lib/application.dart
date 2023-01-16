import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './common/navigation.dart';

import 'package:flutter/foundation.dart';

import './injection.dart';
import 'utils/router_observer.dart';
import './cubit/counter_cubit.dart';

class Application extends StatefulWidget {
    const Application({Key? key}) : super(key: key);

    @override
    _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {

    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        return MultiBlocProvider(
            providers: [
                BlocProvider<CounterCubit>(create: (_) => getIt.get<CounterCubit>()),

            ],
            child: MaterialApp(
                title: 'Flutter Demo',
                theme: ThemeData(),
                darkTheme: ThemeData.dark(), // standard dark theme
                themeMode: ThemeMode.system,
                navigatorObservers: [getIt.get<AppRouteObserver>()],
                debugShowCheckedModeBanner: false,
                navigatorKey: navigation.navigatorKey,
                initialRoute: AppRouter.splash,
                onGenerateRoute: (settings) =>
                    generateRoute(routes: AppRouter(), settings: settings),
            )
        );
    }
    Route<dynamic>? generateRoute({
        required RouterModule routes,
        required RouteSettings settings,
    }) {
        final routesMap = <String, MaterialPageRoute>{};
        routesMap.addAll(routes.getRoutes(settings));
        return routesMap[settings.name];
    }
}


// void main() => runApp(const VideoApp());

/// Stateful widget to fetch and then display video content.
