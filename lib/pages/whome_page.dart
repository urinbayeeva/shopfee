import 'package:flutter/material.dart';

import '../lang_service/words.dart';

class WHomePage extends StatelessWidget {
  const WHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 280,
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: Words.search.tr(context),
                        hintStyle: const TextStyle(
                            color: Color(0xFFCACACA), fontSize: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: const BorderSide(
                              color: Color(0xFFD7CCC8), width: 20),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/images/final_bell.png",
                        scale: 3,
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset("assets/images/promo.png"),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Coffee",
                    style: TextStyle(
                        color: Color(0xFF5D4037),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Non Coffee",
                    style: TextStyle(
                        color: Color(0xFFCACACA),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Pastry",
                    style: TextStyle(
                        color: Color(0xFFCACACA),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 111,
                    height: 5,
                    decoration: BoxDecoration(
                        color: const Color(0xFF5D4037),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  const Divider(
                    color: Color(0xFFCACACA),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 73,
                      height: 34,
                      decoration: BoxDecoration(
                          color: const Color(0xFFEFEBE9),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Center(
                          child: Text(
                        "Filter",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF3C3C3C),
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    Container(
                      width: 93,
                      height: 34,
                      decoration: BoxDecoration(
                          color: const Color(0xFFEFEBE9),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Center(
                          child: Text(
                        "Rating 4.5+",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF3C3C3C),
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    Container(
                      width: 73,
                      height: 34,
                      decoration: BoxDecoration(
                          color: const Color(0xFFEFEBE9),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Center(
                          child: Text(
                        "Price",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF3C3C3C),
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    Container(
                      width: 93,
                      height: 34,
                      decoration: BoxDecoration(
                          color: const Color(0xFFEFEBE9),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Center(
                          child: Text(
                        "Promocode",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF3C3C3C),
                            fontWeight: FontWeight.bold),
                      )),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
