import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class MoreTileWidget extends StatelessWidget {
  const MoreTileWidget({
    Key? key,
    required this.title,
    required this.icon,
    this.onTap,
    this.color,
    this.trailing,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback? onTap;
  final Color? color;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: color, size: 28),
      tileColor: Theme.of(context).colorScheme.background,
      title: Text(
        title,
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: color,
            ),
      ),
      trailing: SizedBox(
        width: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            trailing ?? const SizedBox(width: 0, height: 0),
            Icon(LineAwesomeIcons.angle_right, color: color),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
