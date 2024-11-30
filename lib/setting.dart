import 'package:flutter/material.dart';
import 'package:flutter_go_router/person.dart';

class Setting extends StatefulWidget {
  final Person person;

  const Setting({super.key, required this.person});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Center(
        child: Text(widget.person.toString()),
      ),
    );
  }
}
