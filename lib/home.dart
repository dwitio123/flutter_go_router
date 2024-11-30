import 'package:flutter/material.dart';
import 'package:flutter_go_router/person.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Get Router'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () =>
                  context.goNamed('about', pathParameters: {"name": "TGS"}),
              child: Text('About'),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () => context.goNamed('setting',
                  extra: Person(name: 'TGS', city: 'Sukabumi')),
              child: Text('Setting'),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () => context.goNamed('article'),
              child: Text('Article'),
            ),
          ],
        ),
      ),
    );
  }
}
