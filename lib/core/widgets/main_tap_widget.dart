import 'package:flutter/material.dart';

class MainTapWidget extends StatelessWidget {
  final VoidCallback func;
  final String imagename;
  final String title;

  const MainTapWidget({
    super.key,
    required this.imagename,
    required this.title,
    required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        splashColor: Theme.of(context).colorScheme.surface,
        onTap: func,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              child: Image(
                image: AssetImage(
                  imagename,
                ),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(30)),
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'changa',
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            )
          ],
        ),
      ),
    );
  }
}
