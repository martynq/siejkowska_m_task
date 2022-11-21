import 'package:flutter/material.dart';

class TaskButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final double? width;
  final bool disabled;

  const TaskButton(
    this.text, {
    this.onPressed,
    this.width,
    Key? key,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 3.0),
        borderRadius: const BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
      width: width ?? 330.0,
      height: 60.0,
      child: TextButton(
        onPressed: disabled ? () {} : onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: disabled ? Colors.grey : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
