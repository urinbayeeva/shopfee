import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopfee/lang_service/words.dart';
import 'package:shopfee/pages/whome_page.dart';
import 'package:shopfee/service/db_service.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: [WHomePage()],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Image.asset("assets/images/home_bottom.png"), label: "Home"),
        BottomNavigationBarItem(
            icon: Image.asset("assets/images/order_bottom.png"),
            label: "History"),
        BottomNavigationBarItem(
            icon: Image.asset("assets/images/user_bottom.png"),
            label: "Accout"),
      ]),
    );
  }
}
