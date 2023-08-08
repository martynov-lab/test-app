import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'src/bloc/bloc_input_login/input_login_bloc.dart';
import 'src/bloc/bloc_iput_pin/input_pin_bloc.dart';
import 'src/bloc/cubit_screen_first/screen_first_cubit.dart';
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
          BlocProvider<FirstInputPinBloc>(
            create: (_) => InputPinBloc(),
          ),
          BlocProvider<SecondInputPinBloc>(
            create: (context) => InputPinBloc(),
          ),
          BlocProvider(
            create: (context) => ScreenFirstCubit(
              loginBloc: context.read<InputLoginBloc>(),
              pinTokenBloc: context.read<SecondInputPinBloc>(),
              pinAccountBloc: context.read<FirstInputPinBloc>(),
            ),
          ),
        ],
        child: const Screen1(),
      ),
    );
  }
}
