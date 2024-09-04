import 'package:aqua_expert/core/widgets/list_tile.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Calc2 extends StatefulWidget {
  const Calc2({super.key});

  @override
  State<Calc2> createState() => _Calc2State();
}

class _Calc2State extends State<Calc2> {
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
      host: 'www.omnicalculator.com',
      path: 'biology/fcr',
    );

    final Uri toLaunch2 = Uri(
      scheme: 'https',
      host: 'www.omnicalculator.com',
      path: 'biology/dry-matter',
    );

    final Uri toLaunch3 = Uri(
        scheme: 'https',
        host: 'www.omnicalculator.com',
        path: 'biology/protein-molecular-weight');

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text(
          'حسابات عبر الإنترنت',
        ),
      ),
      body: Column(
        children: [
          MyListTile(
            icon2: Icons.online_prediction,
            icon: Icons.calculate,
            text: 'حساب معدل التحويل',
            text2: 'FCR',
            func: () => setState(() {
              _launched = _launchInBrowserView(toLaunch);
            }),
            colrw: Colors.white,
            colrt: Colors.white,
            colrb: Theme.of(context).colorScheme.primary,
          ),
          MyListTile(
            icon2: Icons.online_prediction,
            icon: Icons.calculate,
            text: 'حساب المادة جافة',
            text2: 'Dry Matter',
            func: () => setState(() {
              _launched = _launchInBrowserView(toLaunch2);
            }),
            colrw: Colors.white,
            colrt: Colors.white,
            colrb: Theme.of(context).colorScheme.primary,
          ),
          MyListTile(
            icon2: Icons.online_prediction,
            icon: Icons.calculate,
            text: 'حاسبة الوزن الجزيئي للبروتين',
            text2: 'PMWC',
            func: () => setState(() {
              _launched = _launchInBrowserView(toLaunch3);
            }),
            colrw: Colors.white,
            colrt: Colors.white,
            colrb: Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
    );
  }
}
