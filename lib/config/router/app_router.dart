import 'package:go_router/go_router.dart';

import 'package:widget_app/presentation/screens/screens.dart';

final AppRouter = GoRouter(

  initialLocation: '/',

  routes: [
    GoRoute(
      path: '/',
      name: LoginPage.name,
      builder: ( context, state ) => const LoginPage(),
    ),
    GoRoute(
      path: '/dashboard',
      name: DashboardScreen.name,
      builder: ( context, state ) => const DashboardScreen(),
    ), 
  ]

);