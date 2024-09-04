import 'package:aqua_expert/core/utils/app_assets.dart';
import 'package:aqua_expert/features/info/appinfo.dart';
import 'package:aqua_expert/features/services/services.dart';
import 'package:flutter/material.dart';
import '../../core/widgets/main_tap_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            MainTapWidget(
              func: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AppInfo()),
                );
              },
              title: 'حول التطبيق',
              imagename: Assets.assetsImagesAquaExpert,
            ),
            const SizedBox(
              height: 20,
            ),
            MainTapWidget(
              title: 'الخدمات',
              imagename: Assets.assetsImagesBackground,
              func: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Services()),
                );
              },
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
      bottomSheet: Image.asset(
        Assets.assetsImagesBrand,
        height: 50,
      ),
    );
  }
}
