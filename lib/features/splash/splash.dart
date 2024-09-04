import 'package:aqua_expert/core/utils/app_assets.dart';
import 'package:aqua_expert/features/home/home.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 4),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Home()),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(children: [
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                Assets.assetsImagesAquaExpert,
                color: Colors.black,
              ),
            ),
            const Text('موطن الخبرة في مجال صناعتي',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 14,
                  fontFamily: 'Changa',
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 22,
            ),
            const Text('الإستزراع المائي والأغذية البحرية',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Kufam',
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                )),
          ]),
        ),
        bottomNavigationBar: Image.asset(
          Assets.assetsImagesBrand,
          height: 100,
        ));
  }
}
