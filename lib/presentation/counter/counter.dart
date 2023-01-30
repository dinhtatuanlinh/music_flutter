import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:music/common/app_constants.dart';
import 'package:music/presentation/custom_widgets.dart';

import '../../cubit/counter_cubit.dart';
import '../../common/navigation.dart';

/// {@template counter_view}
/// A [StatelessWidget] which reacts to the provided
/// [CounterCubit] state and notifies it in response to user input.
/// {@endtemplate}
class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Counter', style: const TextStyle(fontFamily: 'IndieFlower', fontSize: 30))),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text('$state', style: const TextStyle(fontSize: 50, fontFamily: 'IndieFlower'));
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          TextRequirement(text: 'Choose the correct pronunciation'),
          CharBox(text: 'a',),
          BoxButton(iconColor: ColorConstants.colorWhite, icon: FontAwesomeIcons.volumeHigh,backgroundColor: ColorConstants.correctColor),
          // ConfirmButton(text: 'hello world'),
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.add),
            onPressed: () => context.read<CounterCubit>().increase(),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            heroTag: Text("btn4"),
            key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CounterCubit>().decrease(),
            backgroundColor: ColorConstants.correctColor,
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            heroTag: Text("btn1"),
            // key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.home),
            onPressed: () => navigation.removeUntil(AppRouter.splash),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            heroTag: Text("btn5"),
            // key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.youtube_searched_for),
            onPressed: () => navigation.navigateTo(AppRouter.downloadYoutube),
          ),
        ],
      ),
    );
  }
}
