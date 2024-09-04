import 'package:flutter/material.dart';

class ContainerText extends StatelessWidget {
  final String text;
  const ContainerText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          text,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            fontFamily: 'Changa',
            fontSize: 17,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
