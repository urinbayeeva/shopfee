import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        context.goNamed('onboarding');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/splash_coffee.png",
              scale: 3,
            ),
            const SizedBox(
              height: 12,
            ),
            Image.asset(
              "assets/images/text_shopfee.png",
              scale: 4,
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Let us make your day!",
              style: TextStyle(
                  color: Color.fromARGB(255, 100, 53, 35), fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
