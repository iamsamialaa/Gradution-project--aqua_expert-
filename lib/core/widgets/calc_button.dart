import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String name;
  final VoidCallback func;
  final Color colorb;
  final Color colort;

  const CalcButton({
    super.key,
    required this.name,
    required this.func,
    required this.colorb,
    required this.colort,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(colorb),
        ),
        onPressed: func,
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: colort,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
