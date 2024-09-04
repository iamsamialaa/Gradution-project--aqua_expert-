import 'package:aqua_expert/core/widgets/list_tile.dart';
import 'package:aqua_expert/features/services/apps/available/Aqua%20calcutor/economic.dart';
import 'package:aqua_expert/features/services/apps/available/Aqua%20calcutor/other.dart';
import 'package:aqua_expert/features/services/apps/available/Aqua%20calcutor/water.dart';
import 'package:flutter/material.dart';

class AquaCalcutor extends StatelessWidget {
  const AquaCalcutor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('الحسابات المائية'),
      ),
      body: ListView(
        children: [
          MyListTile(
            icon2: Icons.online_prediction,
            icon: Icons.calculate,
            text: 'حساب معدل النمو اليومي',
            text2: 'Daily Growth Rate',
            func: () {
              /*
                    لحساب معدل النمو اليومي للأسماك، يمكنك استخدام المعادلة التالية:
                    DGR = (W2 − W1) / T
                    
                    حيث:
                    W2 = الوزن النهائي للأسماك (كجم).
                    W1 = الوزن الابتدائي للأسماك (كجم).
                    T = عدد الأيام بين الوزن الابتدائي والوزن النهائي.
                    */

              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const AquaCalcutor()),
              // );
            },
            colrw: Colors.white,
            colrt: Colors.white,
            colrb: Theme.of(context).colorScheme.primary,
          ),
          MyListTile(
            icon2: Icons.online_prediction,
            icon: Icons.calculate,
            text: 'حساب معدل التغذية',
            text2: 'Feed Rate',
            func: () {
              /*
                    لحساب كمية العلف اليومية المطلوبة، استخدم المعادلة التالية:
                    Feed Rate = Biomass × FCR
                    حيث:
                    Biomass = الكتلة الحيوية للأسماك (عدد الأسماك × متوسط الوزن).
                    FCR = معدل تحويل الغذاء (Food Conversion Ratio).
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
            text: 'حساب الكتلة الحيوية',
            text2: 'Biomass',
            func: () {
              /*
                    Biomass=Number of Fish×Average Weight
                    حيث:
                    Number of Fish = عدد الأسماك.
                    Average Weight = متوسط وزن السمكة الواحدة (كجم).
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
            text: 'حساب معدل تحويل الغذاء',
            text2: 'Feed Conversion Ratio',
            func: () {
              /*
                    لحساب معدل تحويل الغذاء:
                    FCR= Feed Consumed / Weight Gain
                    ​
                    حيث:
                    Feed Consumed = كمية العلف المستهلكة (كجم).
                    Weight Gain = زيادة الوزن الكلية للأسماك (كجم).
                    
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
            text: 'حساب مؤشر حالة الأسماك',
            text2: 'Fish Condition Factor - K',
            func: () {
              /*
                    لحساب مؤشر حالة الأسماك:
                    K = ( Weight / Length^3 ) × 100
                    
                    حيث:
                    Weight = وزن السمكة (جم).
                    Length = طول السمكة (سم).
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
            height: 30,
          ),
          MyListTile(
            icon2: Icons.online_prediction,
            icon: Icons.calculate,
            text: 'حسابات جودةالمياه',
            text2: 'Water Quality',
            func: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Water()),
              );
            },
            colrw: Colors.white,
            colrt: Colors.white,
            colrb: Theme.of(context).colorScheme.primary.withOpacity(0.6),
          ),
          MyListTile(
            icon2: Icons.online_prediction,
            icon: Icons.calculate,
            text: 'حسابات إقتصادية',
            text2: 'Online',
            func: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Economic()),
              );
            },
            colrw: Colors.white,
            colrt: Colors.white,
            colrb: Theme.of(context).colorScheme.primary.withOpacity(0.6),
          ),
          const SizedBox(
            height: 30,
          ),
          MyListTile(
            icon2: Icons.online_prediction,
            icon: Icons.calculate,
            text: 'حسابات عبر الإنترنت',
            text2: 'Online',
            func: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Calc2()),
              );
            },
            colrw: Colors.white,
            colrt: Colors.white,
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
