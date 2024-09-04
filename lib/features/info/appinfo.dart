import 'package:aqua_expert/core/utils/app_assets.dart';
import 'package:aqua_expert/core/widgets/c_v_list_tile.dart';
import 'package:aqua_expert/core/widgets/container_text.dart';
import 'package:aqua_expert/core/widgets/info_list_tile_icon.dart';
import 'package:aqua_expert/core/widgets/list_tile.dart';
import 'package:aqua_expert/core/widgets/main_tiltle.dart';
import 'package:aqua_expert/features/info/faculty.dart';
import 'package:aqua_expert/features/info/university.dart';
import 'package:flutter/material.dart';
import 'package:pdfrx/pdfrx.dart';

class AppInfo extends StatelessWidget {
  const AppInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          title: const Text('حول التطبيق'),
        ),
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
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  Assets.assetsImagesAquaExpert,
                  color: Colors.black,
                  height: 200,
                ),
              ),
              const MainTiltle(
                text: "تطبيق خبير الإستزراع المائي",
                text2: "AquaExpert App",
              ),
              MyListTile(
                icon2: Icons.offline_pin,
                icon: Icons.book,
                text: 'AquaExpert Book',
                func: () {
                  showDialog(
                      context: context,
                      builder: (context) =>
                          PdfViewer.asset('assets/docs/AQUAEXPERT BOOK.pdf'));
                },
                colrw: Colors.white,
                colrt: Colors.white,
                colrb: Theme.of(context).colorScheme.primary,
              ),
              const ContainerText(
                text:
                    'تطبيق ذكي رائد في مجال الاستزراع المائي، يوفر حلولاً سريعة ومبتكرة للعاملين في هذا القطاع الحيوي. يجمع التطبيق بين تقديم الاستشارات والحلول الفورية للمشكلات التي تواجههم، وربطهم مباشرة بالجهات المعنية لاتخاذ القرارات اللازمة بسرعة. يهدف التطبيق إلى نشر الوعي، ويعتبر الأول من نوعه في مصر المتخصص في مجال الاستزراع المائي، حيث يسعى لخدمة المجتمع وإثراء المعرفة في هذا المجال الهام.',
              ),
              const InfoListTileIcon(
                text: "مبتكر ومطور المشروع",
                icon: Icons.person_pin,
              ),
              CVListTile(
                func: () {
                  showDialog(
                    context: context,
                    builder: (context) => PdfViewer.asset(
                      'assets/docs/Sami_CV.pdf',
                    ),
                  );
                },
                pic: Assets.assetsImagesSami,
                name: 'سامي علاء سامي',
                jop:
                    'حاصل علي بكالريوس الإستزراع المائي، \nكلية الإستزراع المائي والمصايد البحرية',
              ),
              const InfoListTileIcon(
                text: "المشرفين علي المشروع",
                icon: Icons.work_history,
              ),
              const CVListTile(
                pic: Assets.assetsImagesElDakar,
                name: 'أ. د. أشرف الدكر',
                jop:
                    'المؤسس والعميد الأسبق لكليات الثروة السمكية\nرئيس قسم الإستزراع المائي والبيوتكنولوجي \nبكلية الإستزراع المائي والمصايد البحرية',
              ),
              const CVListTile(
                pic: Assets.assetsImagesFathy,
                name: 'د. محمد فتحي عبد العزيز',
                jop: 'مدرس التغذية بكلية الإستزراع المائي والمصايد البحرية',
              ),
              const CVListTile(
                pic: Assets.assetsImagesHassan,
                name: 'د. حسن ربيع',
                jop:
                    'مدرس مراقبة الجودة بكلية الإستزراع المائي والمصايد البحرية',
              ),
              const InfoListTileIcon(
                text: "برعاية",
                icon: Icons.home,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const University()),
                          );
                        },
                        child: Image.asset(
                          Assets.assetsImagesArishUnversityLogo,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Faculty()),
                          );
                        },
                        child: Image.asset(
                          Assets.assetsImagesFacultyRemovebgPreview,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
