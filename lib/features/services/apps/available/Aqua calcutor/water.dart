import 'package:aqua_expert/core/widgets/list_tile.dart';
import 'package:flutter/material.dart';

class Water extends StatelessWidget {
  const Water({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text(
          'حسابات جودةالمياه',
        ),
      ),
      body: ListView(
        children: [
          MyListTile(
            icon2: Icons.online_prediction,
            icon: Icons.calculate,
            text: 'حساب نسبة الأوكسجين المذاب',
            text2: 'Dissolved Oxygen',
            func: () {
              /*
             DO Level= Oxygen Concentration / Volume of Water
​
حيث:
Oxygen Concentration = تركيز الأوكسجين المذاب (ملغم/لتر).
Volume of Water = حجم الماء في الحوض (لتر).
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
            text: 'حساب نسبة الأمونيا',
            text2: 'Ammonia',
            func: () {
              /*
              لمراقبة جودة المياه:
Ammonia Level = Ammonia Concentration / Volume of Water
Nitrite Level = Nitrite Concentration / Volume of Water

حيث:
Ammonia Concentration = تركيز الأمونيا (ملغم/لتر).
Nitrite Concentration = تركيز النيتريت (ملغم/لتر).
Volume of Water = حجم الماء في الحوض (لتر).
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
            text: 'حساب نسبة النيتريت',
            text2: 'Nitrite',
            func: () {
              /*
              لمراقبة جودة المياه:
Ammonia Level = Ammonia Concentration / Volume of Water
Nitrite Level = Nitrite Concentration / Volume of Water

حيث:
Ammonia Concentration = تركيز الأمونيا (ملغم/لتر).
Nitrite Concentration = تركيز النيتريت (ملغم/لتر).
Volume of Water = حجم الماء في الحوض (لتر).
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
