import 'package:flutter/material.dart';

import '../responsive/mobile_screen.dart';
import '../widgets/note.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Note(),
          ],
        ),
      ),
    );
  }
}
