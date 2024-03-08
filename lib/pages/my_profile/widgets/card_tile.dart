import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  final String img;
  final String type;
  final Widget icon;

  const CardTile({
    Key? key,
    required this.img,
    required this.type,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        img,
        height: 30,
        width: 30,
        fit: BoxFit.cover,
      ),
      title: Text(
        type,
        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
      ),
      trailing: icon,
      onTap: () {},
    );
  }
}
