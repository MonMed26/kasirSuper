import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/features/home/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Navigator.pushNamedAndRemoveUntil(
        context,
        HomePage.routeName,
        (route) => false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              MainAssets.logo,
              width: MediaQuery.of(context).size.width / 2,
            ),
            16.0.height, // Ini juga menggunakan extension yaitu sizedbox extension
            const HeadingText('Kasir Super'),
          ],
        ),
      ),
    );
  }
}
