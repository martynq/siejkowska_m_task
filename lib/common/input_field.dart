import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final FocusNode focusNode;
  final TextEditingController controller;
  final String hintText;
  final Function(String) onChanged;
  final Function(String?) validator;
  final String validatorInfo;

  const InputField(
      {Key? key,
      required this.formKey,
      required this.focusNode,
      required this.controller,
      required this.hintText,
      required this.onChanged,
      required this.validator,
      required this.validatorInfo})
      : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(width: 1.0),
        borderRadius: const BorderRadius.all(Radius.circular(5.0) //
            ),
      ),
      child: Form(
        key: widget.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: TextFormField(
          focusNode: widget.focusNode,
          cursorColor: Colors.black,
          controller: widget.controller,
          autofocus: false,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: widget.hintText,
            hintStyle: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontSize: 14,
                ),
          ),
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                fontSize: 14,
              ),
          onChanged: (name) {
            widget.onChanged.call(name);
          },
          keyboardType: TextInputType.name,
          validator: (value) =>
              widget.validator.call(value) ? null : widget.validatorInfo,
        ),
      ),
    );
  }
}
