import 'package:aqua_expert/core/widgets/list_tile.dart';
import 'package:flutter/material.dart';

class Economic extends StatelessWidget {
  const Economic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('الحسابات الإقتصادية'),
      ),
      body: ListView(
        children: [
          MyListTile(
            icon2: Icons.online_prediction,
            icon: Icons.calculate,
            text: 'حساب التكلفة الإجمالية',
            text2: 'Total Cost',
            func: () {
              /*
              لحساب التكلفة الإجمالية لإنتاج الأسماك:
Total Cost = Feed Cost + Operating Costs + Labor Costs + Miscellaneous Costs

حيث:
Feed Cost = تكلفة العلف.
Operating Costs = تكاليف التشغيل (مثل الكهرباء، المياه، إلخ).
Labor Costs = تكاليف العمالة.
Miscellaneous Costs = تكاليف متنوعة أخرى.

               */
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const Calc2()),
              // );
            },
            colrw: Colors.white,
            colrt: Colors.white,
            colrb: Theme.of(context).colorScheme.primary,
          ),
          MyListTile(
            icon2: Icons.online_prediction,
            icon: Icons.calculate,
            text: 'حساب الإيرادات',
            text2: 'Revenue',
            func: () {
              /*
              لحساب الإيرادات من بيع الأسماك:
Revenue = Total Weight of Fish × Market Price per kg

حيث:
Total Weight of Fish = الوزن الكلي للأسماك المباعة (كجم).
Market Price per kg = سعر السوق لكل كجم من الأسماك.
               */
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const Calc2()),
              // );
            },
            colrw: Colors.white,
            colrt: Colors.white,
            colrb: Theme.of(context).colorScheme.primary,
          ),
          MyListTile(
            icon2: Icons.online_prediction,
            icon: Icons.calculate,
            text: 'حساب الأرباح',
            text2: 'Profit',
            func: () {
              /*
              لحساب الأرباح:
Profit = Revenue − Total Cost 
*/

              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const Calc2()),
              // );
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
