import 'package:aqua_expert/core/widgets/list_tile.dart';
import 'package:aqua_expert/features/services/apps/others/aquaprice.dart';
import 'package:aqua_expert/features/services/apps/others/aquaquest.dart';
import 'package:aqua_expert/features/services/apps/others/aquastatics.dart';
import 'package:flutter/material.dart';

class Others extends StatelessWidget {
  const Others({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('خدمات أخري'),
      ),
      body: Column(
        children: [
          MyListTile(
            icon2: Icons.online_prediction,
            icon: Icons.bar_chart,
            text: 'الإحصائي المائي',
            text2: 'AquaStatics',
            func: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AquaStatics()),
              );
            },
            colrw: Colors.white,
            colrt: Colors.white,
            colrb: Theme.of(context).colorScheme.primary,
          ),
          MyListTile(
            icon2: Icons.online_prediction,
            icon: Icons.attach_money,
            text: 'بورصة الإستزراع المائي',
            text2: 'AquaPrice',
            func: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AquaPrice()),
              );
            },
            colrw: Colors.white,
            colrt: Colors.white,
            colrb: Theme.of(context).colorScheme.primary,
          ),
          MyListTile(
            icon2: Icons.online_prediction,
            icon: Icons.question_answer,
            text: 'أسأل خبير',
            text2: 'AquaQuest',
            func: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AquaQuest()),
              );
            },
            colrw: Colors.white,
            colrt: Colors.white,
            colrb: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
