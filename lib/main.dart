import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:referal_market/controllers/getx/get.dart';
import 'package:referal_market/controllers/routers/routers.dart';
import 'package:referal_market/screens/home_screen.dart';
import 'package:referal_market/screens/orders_list_screen.dart';
import 'package:referal_market/screens/serviceexample_list_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppGetController appget = AppGetController();
  Get.put<AppGetController>(appget);
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: "/",
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: Routes.orderslist,
      builder: (BuildContext context, GoRouterState state) {
        return const OrdersListScreen();
      },
    ),
    GoRoute(
      path: Routes.serviceexamplelist,
      builder: (BuildContext context, GoRouterState state) {
        return const ServiceExampleListScreen();
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
