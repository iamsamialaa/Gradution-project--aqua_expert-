import 'package:flutter/material.dart';

class AquaExpert extends StatelessWidget {
  const AquaExpert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('المعلومات المائية'),
      ),
    );
  }
}
