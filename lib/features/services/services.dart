import 'package:aqua_expert/core/widgets/list_tile.dart';
import 'package:aqua_expert/features/services/apps/available/Aqua%20calcutor/aquacalcutor.dart';
import 'package:aqua_expert/features/services/aquaexpert.dart';
import 'package:aqua_expert/features/services/others.dart';
import 'package:aqua_expert/features/services/perimum.dart';
import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('الخدمات'),
      ),
      body: ListView(
        children: [
          MyListTile(
            icon2: Icons.online_prediction,
            icon: Icons.calculate,
            text: 'الحسابات المائية',
            text2: 'AquaCalcutor',
            func: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AquaCalcutor()),
              );
            },
            colrw: Colors.white,
            colrt: Colors.white,
            colrb: Theme.of(context).colorScheme.primary,
          ),
          MyListTile(
            icon: Icons.thermostat_sharp,
            text: 'المعدات وحبيبات العلف',
            icon2: Icons.offline_pin,
            text2: 'AquaChoice',
            func: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const Services()),
              // );
            },
            colrw: Colors.white,
            colrt: Colors.white,
            colrb: Theme.of(context).colorScheme.primary,
          ),
          MyListTile(
            icon2: Icons.online_prediction,
            icon: Icons.phone,
            text: 'خبير التواصل',
            text2: 'AquaPhone',
            func: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const Services()),
              // );
            },
            colrw: Colors.white,
            colrt: Colors.white,
            colrb: Theme.of(context).colorScheme.primary,
          ),
          MyListTile(
            icon: Icons.book,
            icon2: Icons.offline_pin,
            text: 'المعلومات المائية',
            text2: 'AquaExpert',
            func: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AquaExpert()),
              );
            },
            colrw: Colors.white,
            colrt: Colors.white,
            colrb: Theme.of(context).colorScheme.primary,
          ),
          MyListTile(
            icon2: Icons.unarchive,
            icon: Icons.add,
            text: 'خدمات أخري',
            func: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Others()),
              );
            },
            colrw: Colors.white,
            colrt: Colors.white,
            colrb: Theme.of(context).colorScheme.primary.withOpacity(0.6),
          ),
          MyListTile(
            icon2: Icons.workspace_premium_rounded,
            icon: Icons.lock,
            text: 'الخدمات المدفوعة',
            text2: 'Perimum Services',
            func: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Perimum()),
              );
            },
            colrw: Colors.white70,
            colrt: Colors.white70,
            colrb: Theme.of(context).colorScheme.primary.withOpacity(0.4),
          ),
        ],
      ),
    );
  }
}
