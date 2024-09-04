import 'package:aqua_expert/core/utils/app_assets.dart';
import 'package:aqua_expert/core/widgets/c_v_list_tile.dart';
import 'package:aqua_expert/core/widgets/container_text.dart';
import 'package:aqua_expert/core/widgets/main_tiltle.dart';
import 'package:flutter/material.dart';

class Faculty extends StatelessWidget {
  const Faculty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                Assets.assetsImagesBackground,
              ),
              fit: BoxFit.cover,
              opacity: 0.1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListView(
              children: [
                Image.asset(
                  Assets.assetsImagesFacultyRemovebgPreview,
                  color: Colors.black,
                  height: 200,
                ),
                const MainTiltle(
                  text: "كلية الاستزراع المائي والمصايد البحرية",
                  text2: "جامعة العريش",
                ),
                const ContainerText(
                  text:
                      "تعتبر واحدة من أهم الكليات التي تأسست حديثًا وتعد جزءًا من قطاع الثروة السمكية إذ يعتبر برنامج تكنولوجيا المصايد البحرية الأول من نوعه في مصر والشرق الأوسط، في محالات الصيد من المياه الإقليمية والمحيطات العميقة، بالإضافة إلى السلامة البحرية.",
                ),
                const MainTiltle(
                  text: "\nعميد الكلية",
                  text2: "",
                ),
                const CVListTile(
                  pic: Assets.assetsImagesDrSalem,
                  name: 'أ. د. محمد سالم',
                  jop: 'عميد كلية الإستزراع المائي والمصايد البحرية',
                ),
                const MainTiltle(
                  text: "\nمبني كلية الإستزراع المائي",
                  text2: "",
                ),
                Image.asset(
                  Assets.assetsImagesFaculHome,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ));
  }
}
