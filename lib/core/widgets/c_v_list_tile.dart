import 'package:flutter/material.dart';

class CVListTile extends StatelessWidget {
  final String pic;
  final String name;
  final String jop;
  final VoidCallback? func;
  const CVListTile({
    super.key,
    required this.pic,
    required this.name,
    required this.jop,
    this.func,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(10),
      onTap: func,
      trailing: SizedBox(
        height: 70,
        child: Image.asset(
          pic,
          fit: BoxFit.fitHeight,
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontFamily: 'Changa',
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      subtitle: Text(
        jop,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 10,
          fontFamily: 'Changa',
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
