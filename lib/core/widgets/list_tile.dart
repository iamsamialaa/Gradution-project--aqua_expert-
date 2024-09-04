import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final IconData icon;
  final IconData icon2;
  final String text;
  final String? text2;
  final VoidCallback func;
  final Color colrw;
  final Color colrt;
  final Color colrb;

  const MyListTile({
    super.key,
    required this.icon,
    required this.text,
    this.text2,
    required this.func,
    required this.icon2,
    required this.colrw,
    required this.colrt,
    required this.colrb,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 20,
        left: 20,
        top: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colrb,
      ),
      child: ListTile(
        onTap: func,
        leading: Icon(
          icon,
          color: colrw,
        ),
        trailing: Icon(
          icon2,
          color: colrw,
        ),
        title: Text(
          text,
          textAlign: TextAlign.right,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: colrt,
            fontFamily: 'Kufam',
          ),
        ),
        subtitle: text2 != null
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text2!,
                    style: TextStyle(
                      fontSize: 14,
                      color: colrw,
                      fontFamily: 'Changa',
                    ),
                  ),
                ],
              )
            : null,
      ),
    );
  }
}
