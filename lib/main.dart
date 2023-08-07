import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/bloc_input_login/input_login_bloc.dart';
import 'src/bloc_iput_pin/input_pin_bloc.dart';
import 'src/cubit_screen_first/screen_first_cubit.dart';
import 'src/screen1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => InputLoginBloc(),
          ),
          BlocProvider<FirstInputBloc>(
            create: (_) => InputPinBloc(),
          ),
          BlocProvider<SecondInputBloc>(
            create: (context) => InputPinBloc(),
          ),
          BlocProvider(
            create: (context) => ScreenFirstCubit(
              loginBloc: context.read<InputLoginBloc>(),
              pinTokenBloc: context.read<SecondInputBloc>(),
              pinAccountBloc: context.read<FirstInputBloc>(),
            ),
          ),
        ],
        child: const Screen1(),
      ),
    );
  }
}
