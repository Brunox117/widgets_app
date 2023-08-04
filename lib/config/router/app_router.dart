import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/presentation/screens/cards/card_screen.dart';

import '../../presentation/screens/home/home_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonScreen.name,
      builder:(context, state) => const ButtonScreen(),  
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder:(context, state) => const CardsScreen(),  
    ),
  ],
);