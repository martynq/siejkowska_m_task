import 'package:flutter/material.dart';

class CountryInfoRow extends StatelessWidget {
  final String title;
  final String info;

  const CountryInfoRow({
    Key? key,
    required this.title,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(title),
          const SizedBox(
            width: 10,
          ),
          Text(info)
        ],
      ),
    );
  }
}
