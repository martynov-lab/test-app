import 'package:flutter/material.dart';
import 'package:flutter_app_test/src/bloc_input_login/input_login_bloc.dart';
import 'package:flutter_app_test/src/bloc_iput_pin/input_pin_bloc.dart';
import 'package:flutter_app_test/src/input_text.dart';
import 'package:flutter_app_test/src/validation_input_mixin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit_screen_first/screen_first_cubit.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> with ValidatorMixin {
  FocusNode focusNodeLogin = FocusNode();
  FocusNode focusNodePin = FocusNode();
  FocusNode focusNodePin2 = FocusNode();
  @override
  void dispose() {
    focusNodeLogin.dispose();
    focusNodePin.dispose();
    focusNodePin2.dispose();
    super.dispose();
  }

  @override
  void initState() {
    focusNodeLogin.addListener(() {
      if (!focusNodeLogin.hasFocus) {
        context.read<InputLoginBloc>().add(InputLoginEvent.unfocused());
      }
    });
    focusNodePin.addListener(() {
      if (!focusNodePin.hasFocus) {
        context.read<FirstInputPinBloc>().add(InputPinEvent.unfocused());
      }
    });
    focusNodePin2.addListener(() {
      if (!focusNodePin2.hasFocus) {
        context.read<SecondInputPinBloc>().add(InputPinEvent.unfocused());
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<ScreenFirstCubit, ScreenFirstState>(
              builder: (context, state) {
                return InputText(
                  // controller: _controllerToken,
                  focusNode: focusNodePin2,
                  label: 'PIN код',
                  hint: 'Введите PIN код',
                  errorText: state.pinTokenErrorMessage,
                  onChanged: (value) {
                    context
                        .read<SecondInputPinBloc>()
                        .add(InputPinEvent.changed(value));
                  },
                );
              },
            ),
            const SizedBox(height: 30),
            BlocBuilder<ScreenFirstCubit, ScreenFirstState>(
              //context.read<FormLoginCubit>()
              builder: (context, state) {
                return InputText(
                  // controller: _controller1,
                  focusNode: focusNodeLogin,
                  label: 'Логин',
                  hint: 'Введите логин',
                  errorText: state.loginErrorMessage,
                  onChanged: (value) {
                    context
                        .read<InputLoginBloc>()
                        .add(InputLoginEvent.changed(value));
                  },
                );
              },
            ),
            const SizedBox(height: 30),
            BlocBuilder<ScreenFirstCubit, ScreenFirstState>(
              builder: (context, state) {
                return InputText(
                  // controller: _controller2,
                  focusNode: focusNodePin,
                  label: 'PIN код',
                  hint: 'Введите PIN код',
                  errorText: state.pinAccountErrorMessage,
                  onChanged: (value) {
                    context
                        .read<FirstInputPinBloc>()
                        .add(InputPinEvent.changed(value));
                  },
                );
              },
            ),
            const SizedBox(height: 30),
            BlocBuilder<ScreenFirstCubit, ScreenFirstState>(
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: () {
                    context.read<ScreenFirstCubit>().submite();
                    if (state.isFormValid == true) {}
                  },
                  child: const Text('Submite'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
