import 'dart:async';
import 'package:aqua_expert/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AquaStatics extends StatefulWidget {
  const AquaStatics({
    super.key,
  });

  @override
  State<AquaStatics> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<AquaStatics> {
  Future<void>? _launched;

  Future<void> _launchInBrowserView(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.inAppBrowserView)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Uri toLaunch = Uri(
      scheme: 'https',
      host: 'www.lfrpda.org',
      path: '',
    );
    final Uri toLaunch2 = Uri(
      scheme: 'https',
      host: 'bit.ly',
      path: 'CAPMAS_samibn3laa',
    );
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('الإحصائي المائي'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => setState(() {
                _launched = _launchInBrowserView(toLaunch);
              }),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  child: Image.asset(
                    height: 250,
                    Assets.assetsImagesFisheiesSystem,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                Assets.assetsImagesCApMas,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => setState(() {
                  _launched = _launchInBrowserView(toLaunch2);
                }),
                child: const Text(
                  'إجمالى كمية الإنتاج السمكى | الجهاز المركزي',
                  style: TextStyle(
                    color: Color.fromARGB(255, 60, 90, 84),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
