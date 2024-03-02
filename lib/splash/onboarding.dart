import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../controller/lang_controller.dart';
import '../lang_service/words.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Align(
                alignment: Alignment.topRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      Words.skip.tr(context),
                      style: const TextStyle(color: Colors.brown),
                    ))),
          ),
          PageView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Image.asset(
                        "assets/images/onboarding.png",
                        scale: 4,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      Words.choose.tr(context),
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 66, 48, 42)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      Words.customize.tr(context),
                      style: const TextStyle(fontSize: 16),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Image.asset(
                        "assets/images/watch.png",
                        scale: 3,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      Words.quick.tr(context),
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 66, 48, 42)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      Words.you_can.tr(context),
                      style: const TextStyle(fontSize: 16),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Image.asset(
                        "assets/images/discount.jpg",
                        scale: 4,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      Words.get.tr(context),
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 66, 48, 42)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      Words.prize.tr(context),
                      style: const TextStyle(fontSize: 16),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 640,
            left: 20,
            child: Image.asset(
              "assets/images/slier.png",
              scale: 2,
            ),
          ),
          Positioned(
            top: 620,
            right: 20,
            child: SizedBox(
              width: 156,
              height: 48,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    context.go("/home");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(Words.next.tr(context)),
                      const Icon(Icons.navigate_next)
                    ],
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Positioned(
            top: 700,
            left: 20,
            child: Row(
              children: [
                TextButton(
                    onPressed: () {
                      localeController.changeLang(Language.en);
                    },
                    child: const Text("ENG")),
                TextButton(
                    onPressed: () {
                      localeController.changeLang(Language.uz);
                    },
                    child: const Text("UZ")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
