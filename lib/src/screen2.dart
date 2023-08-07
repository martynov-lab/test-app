import 'package:flutter/material.dart';
import 'package:flutter_app_test/src/input_text.dart';

class Screen2 extends StatefulWidget {
  // final String textScreen2;
  const Screen2({
    super.key,
    // required this.textScreen2,
  });

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  TextEditingController _controller = TextEditingController();
  FocusNode focusNode = FocusNode();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text('Text со Screen 1: ${widget.textScreen2}'),
            // const SizedBox(height: 30),
            InputText(
              controller: _controller,
              focusNode: focusNode,
              label: 'Ваше введенное значение:',
              hint: 'Введите значение',
              errorText: 'sdfsdfsdf',
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Submite'),
            ),
          ],
        ),
      ),
    );
  }
}
