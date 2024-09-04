import 'package:flutter/material.dart';

class InfoListTileIcon extends StatelessWidget {
  final String text;
  final IconData icon;

  const InfoListTileIcon({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: ListTile(
          title: Text(text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'Changa',
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          leading: Icon(
            icon,
            color: Colors.white,
          ),
          trailing: Icon(
            icon,
            color: Colors.white,
          ),
        ));
  }
}
