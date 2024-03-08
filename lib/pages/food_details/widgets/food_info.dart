import 'package:flutter/material.dart';

class FoodInfo extends StatelessWidget {
  final String icon;
  final String value;

  const FoodInfo({
    Key? key,
    required this.icon,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          icon,
          height: 15,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 14),
        )
      ],
    );
  }
}
