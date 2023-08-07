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
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controllerToken = TextEditingController();
  FocusNode focusNodeLogin = FocusNode();
  FocusNode focusNodePin = FocusNode();
  FocusNode focusNodePin2 = FocusNode();
  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controllerToken.dispose();
    focusNodeLogin.dispose();
    focusNodePin.dispose();
    focusNodePin2.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller1.addListener(() {
      // if (_controller1.text.length > 1) {
      context
          .read<InputLoginBloc>()
          .add(InputLoginEvent.changed(_controller1.text));
      // }
    });
    _controller2.addListener(() {
      // if (_controller2.text.length > 1) {
      context
          .read<FirstInputBloc>()
          .add(InputPinEvent.changed(_controller2.text));
      // }
    });
    _controllerToken.addListener(() {
      // if (_controller3.text.length > 1) {
      context
          .read<SecondInputBloc>()
          .add(InputPinEvent.changed(_controllerToken.text));
      // }
    });
    focusNodeLogin.addListener(() {
      if (!focusNodeLogin.hasFocus) {
        context.read<InputLoginBloc>().add(InputLoginEvent.unfocused());
      }
    });
    focusNodePin.addListener(() {
      if (!focusNodePin.hasFocus) {
        context.read<FirstInputBloc>().add(InputPinEvent.unfocused());
      }
    });
    focusNodePin2.addListener(() {
      if (!focusNodePin2.hasFocus) {
        context.read<SecondInputBloc>().add(InputPinEvent.unfocused());
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
                  controller: _controllerToken,
                  focusNode: focusNodePin2,
                  label: 'PIN код',
                  hint: 'Введите PIN код',
                  errorText: state.pinTokenErrorMessage,
                );
              },
            ),
            const SizedBox(height: 30),
            BlocBuilder<ScreenFirstCubit, ScreenFirstState>(
              //context.read<FormLoginCubit>()
              builder: (context, state) {
                return InputText(
                  controller: _controller1,
                  focusNode: focusNodeLogin,
                  label: 'Логин',
                  hint: 'Введите логин',
                  errorText: state.loginErrorMessage,
                );
              },
            ),
            const SizedBox(height: 30),
            BlocBuilder<ScreenFirstCubit, ScreenFirstState>(
              builder: (context, state) {
                return InputText(
                  controller: _controller2,
                  focusNode: focusNodePin,
                  label: 'PIN код',
                  hint: 'Введите PIN код',
                  errorText: state.pinAccountErrorMessage,
                );
              },
            ),
            const SizedBox(height: 30),
            BlocBuilder<ScreenFirstCubit, ScreenFirstState>(
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: () {
                    context.read<ScreenFirstCubit>().submite();
                    if (state.isFormValid == true) {
                      _controller1.clear();
                      _controller2.clear();
                    }
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
