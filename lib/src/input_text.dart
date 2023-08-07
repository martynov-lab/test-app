import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputText extends StatefulWidget {
  final bool enableInterface;
  final bool isRequired;
  final bool isPassword;
  final String? label;
  final TextStyle? labelStyle;
  final String hint;
  // final TextEditingController controller;
  final FocusNode focusNode;
  final Function? onPressedSuffixButton;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String) onChanged;
  final String? errorText;
  const InputText({
    super.key,
    this.label,
    this.hint = '',
    // required this.controller,
    required this.focusNode,
    this.enableInterface = true,
    this.isRequired = false,
    this.isPassword = false,
    this.labelStyle,
    this.onPressedSuffixButton,
    this.prefixIcon,
    this.suffixIcon,
    this.inputFormatters,
    required this.onChanged,
    required this.errorText,
  });

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  bool isTextFieldNotEmpty = false;
  bool _isHidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...[
          RichText(
            text: TextSpan(
              text: widget.isRequired ? '* ' : null,
              style: const TextStyle(fontSize: 16).copyWith(
                color: widget.enableInterface ? Colors.red : Colors.grey,
              ),
              children: [
                TextSpan(
                  text: widget.label,
                  style: widget.labelStyle ??
                      const TextStyle(fontSize: 18).copyWith(
                        color: widget.enableInterface
                            ? Colors.black
                            : Colors.black.withOpacity(.4),
                      ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
        ],
        widget.enableInterface
            ? SizedBox(
                height: 56,
                child: TextFormField(
                  focusNode: widget.focusNode,
                  // validator: widget.validator,
                  // controller: widget.controller,
                  obscureText: widget.isPassword ? _isHidePassword : false,
                  obscuringCharacter: '●',
                  inputFormatters: widget.inputFormatters,
                  autocorrect: false,
                  decoration: InputDecoration(
                    errorBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(
                        color: Colors.red, //темная такая же
                        width: 1,
                      ),
                    ),
                    hintText: widget.hint,
                    errorText: widget.errorText,
                    prefixIcon: widget.prefixIcon,
                    suffixIcon: widget.isPassword
                        ? IconButton(
                            onPressed: () {
                              widget.onPressedSuffixButton;
                              // setState(() {
                              //   _isHidePassword = !_isHidePassword;
                              // });
                            },
                            icon: Icon(
                              _isHidePassword
                                  ? Icons.remove_red_eye
                                  : Icons.remove_red_eye_outlined,
                            ),
                          )
                        : widget.suffixIcon ??
                            (isTextFieldNotEmpty
                                ? IconButton(
                                    onPressed: () {
                                      widget.onPressedSuffixButton;
                                      // widget.controller.clear();
                                      setState(() {
                                        isTextFieldNotEmpty = false;
                                      });
                                    },
                                    icon: const Icon(Icons.cancel),
                                  )
                                : const SizedBox.shrink()),
                  ),
                  onChanged: widget.onChanged,
                  // (value) {
                  // setState(() {
                  //   isTextFieldNotEmpty = value.isNotEmpty;
                  // });
                  // },
                ),
              )
            : Container(
                height: 56,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
      ],
    );
  }
}
