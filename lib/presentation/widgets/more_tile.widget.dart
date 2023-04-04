import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class MoreTileWidget extends StatelessWidget {
  const MoreTileWidget({
    Key? key,
    required this.title,
    required this.icon,
    this.onTap,
    this.color,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: color, size: 28),
      tileColor: Theme.of(context).colorScheme.background,
      title: Text(title, style: TextStyle(color: color)),
      trailing: Icon(LineAwesomeIcons.angle_right, color: color),
      onTap: onTap,
    );
  }
}
