import 'package:flutter/material.dart';

class MainTiltle extends StatelessWidget {
  final String text;
  final String text2;
  const MainTiltle({
    super.key,
    required this.text,
    required this.text2,
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
                fontFamily: 'Kufam',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          subtitle: Text(
            text2,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ));
  }
}
