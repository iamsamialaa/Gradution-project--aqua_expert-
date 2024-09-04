import 'dart:async';
import 'package:aqua_expert/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AquaQuest extends StatefulWidget {
  const AquaQuest({
    super.key,
  });

  @override
  State<AquaQuest> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<AquaQuest> {
  Future<void>? _launched;

  Future<void> _launchInBrowserView(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.inAppBrowserView)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Uri toLaunch =
        Uri(scheme: 'https', host: 'asmaknet.com', path: 'experts/');
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('أسأل خبير | asmaknet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: InkWell(
          onTap: () {
            setState(() {
              _launched = _launchInBrowserView(toLaunch);
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  Assets.assetsImagesQuestion,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => setState(() {
                    _launched = _launchInBrowserView(toLaunch);
                  }),
                  child: Text(
                    'أسأل خبير | asmaknet',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
