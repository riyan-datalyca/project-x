import 'package:flutter/material.dart';
import 'package:project_x/home/home_page.dart';
import 'package:project_x/home/login/login_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routes = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(path: '/home', builder: (context, state)=> const HomePage())
      ],
    );
    return MaterialApp.router(
      routerConfig: routes,
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.purple,
        accentColor: Colors.purpleAccent,
        backgroundColor: Colors.white30,
      )),
      debugShowCheckedModeBanner: false,
    );
  }
}
