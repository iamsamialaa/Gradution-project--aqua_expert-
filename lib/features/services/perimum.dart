import 'package:aqua_expert/core/widgets/list_tile.dart';
import 'package:flutter/material.dart';

class Perimum extends StatelessWidget {
  const Perimum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text(
          'الخدمات المدفوعة',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MyListTile(
            icon2: Icons.workspace_premium_rounded,
            icon: Icons.camera,
            text: 'الطبيب المائي - بريميوم',
            text2: 'Ai AquaDoctor - periumum',
            func: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const Services()),
              // );
            },
            colrw: Colors.black,
            colrt: Colors.black,
            colrb: Theme.of(context).colorScheme.primary.withOpacity(0.4),
          ),
          MyListTile(
            icon2: Icons.workspace_premium_rounded,
            icon: Icons.bluetooth,
            text: 'الموصل المائي - بريميوم',
            text2: 'AquaConnect - periumum',
            func: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const Services()),
              // );
            },
            colrw: Colors.black,
            colrt: Colors.black,
            colrb: Theme.of(context).colorScheme.primary.withOpacity(0.4),
          ),
          MyListTile(
            icon2: Icons.workspace_premium_rounded,
            icon: Icons.shopify,
            text: 'المسوق المائي - بريميوم',
            text2: 'AquaMarket - periumum',
            func: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const Services()),
              // );
            },
            colrw: Colors.black,
            colrt: Colors.black,
            colrb: Theme.of(context).colorScheme.primary.withOpacity(0.4),
          ),
          MyListTile(
            icon2: Icons.workspace_premium_rounded,
            icon: Icons.message,
            text: 'السوشيال المائي - بريميوم',
            text2: 'AquaMedia - periumum',
            func: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const Services()),
              // );
            },
            colrw: Colors.black,
            colrt: Colors.black,
            colrb: Theme.of(context).colorScheme.primary.withOpacity(0.4),
          ),
          MyListTile(
            icon2: Icons.workspace_premium_rounded,
            icon: Icons.map_outlined,
            text: 'الخريطة المائية - بريميوم',
            text2: 'AquaMap - periumum',
            func: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const Services()),
              // );
            },
            colrw: Colors.black,
            colrt: Colors.black,
            colrb: Theme.of(context).colorScheme.primary.withOpacity(0.4),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
