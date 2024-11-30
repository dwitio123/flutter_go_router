import 'package:flutter/material.dart';
import 'package:flutter_go_router/about.dart';
import 'package:flutter_go_router/article.dart';
import 'package:flutter_go_router/home.dart';
import 'package:flutter_go_router/login.dart';
import 'package:flutter_go_router/person.dart';
import 'package:flutter_go_router/setting.dart';
import 'package:go_router/go_router.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/home',
    routes: [
      GoRoute(
          path: '/home',
          name: 'home',
          builder: (context, state) {
            return Home();
          },
          routes: [
            GoRoute(
              path: 'article',
              name: 'article',
              builder: (context, state) {
                return Article();
              },
            )
          ]),
      GoRoute(
        path: '/setting',
        name: 'setting',
        builder: (context, state) {
          Person person = state.extra as Person;
          print(person.toString());
          return Setting(
            person: person,
          );
        },
        // redirect: (context, state) {
        //   return '/login';
        // },
      ),
      GoRoute(
        path: '/about/:name',
        name: 'about',
        builder: (context, state) {
          print(state.pathParameters['name']);
          return About();
        },
      ),
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) {
          return Login();
        },
      ),
    ],
  );
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}
