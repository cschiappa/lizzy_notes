import 'package:flutter/material.dart';

import '../responsive/mobile_screen.dart';
import '../widgets/note.dart';

class ArchivedPage extends StatefulWidget {
  const ArchivedPage({super.key});

  @override
  State<ArchivedPage> createState() => _ArchivedPageState();
}

class _ArchivedPageState extends State<ArchivedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Archived'),
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
