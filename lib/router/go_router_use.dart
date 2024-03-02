import 'package:go_router/go_router.dart';
import 'package:shopfee/pages/history_page.dart';
import 'package:shopfee/pages/home_page.dart';
import 'package:shopfee/splash/onboarding.dart';
import 'package:shopfee/splash/splash_screen.dart';

class AppGoRouter {
  static final GoRouter goRouter = GoRouter(initialLocation: "/", routes: [
    GoRoute(
        path: "/",
        name: "splash",
        builder: (context, GoRouterState state) => const SplashScreen()),
    GoRoute(
        path: "/onboarding",
        name: "onboarding",
        builder: (context, GoRouterState state) => const OnBoardingPage()),
    GoRoute(
        path: "/home",
        name: "home-page",
        builder: (context, GoRouterState state) => const HomePage(),
        routes: [
          GoRoute(
              path: "/history",
              name: "history-page",
              builder: (context, GoRouterState state) => const HistoryPage())
        ]),
  ]);
}
