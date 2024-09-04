import 'package:aqua_expert/core/utils/app_assets.dart';
import 'package:aqua_expert/core/widgets/c_v_list_tile.dart';
import 'package:aqua_expert/core/widgets/container_text.dart';
import 'package:aqua_expert/core/widgets/main_tiltle.dart';
import 'package:flutter/material.dart';

class University extends StatelessWidget {
  const University({super.key});

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
                  Assets.assetsImagesArishUnversityLogo,
                  color: Colors.black,
                  height: 200,
                ),
                const MainTiltle(
                  text: "جامعة العريش",
                  text2: "جامعة حكومية",
                ),
                const ContainerText(
                  text:
                      "جامعة العريش، جامعة مصرية حكومية مقرها مدينة العريش بمحافظة شمال سيناء في مصر، أنشئت بموجب القرار الجمهوري بتاريخ 25 أبريل 2016. أنشئت في بادئ الأمر كفرع لجامعة قناة السويس.",
                ),
                const MainTiltle(
                  text: "\nرئيس الجامعة",
                  text2: "",
                ),
                const CVListTile(
                  pic: Assets.assetsImagesUnversDr,
                  name: 'أ. د. حسن الدمرداش',
                  jop: "رئيس جامعة العريش",
                ),
                const MainTiltle(
                  text: "\nجامعة العريش",
                  text2: "",
                ),
                Image.asset(
                  Assets.assetsImagesUnver,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ));
  }
}
