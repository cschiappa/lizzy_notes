import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lizzy_notes/widgets/note_color_menu.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _titleController = TextEditingController();
    TextEditingController _descriptionController = TextEditingController();

    return SizedBox(
      height: 450,
      child: SafeArea(
        minimum: EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(child: Text('Create a Note')),
                Icon(Icons.cancel)
              ],
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Title',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Write something here...',
                alignLabelWithHint: true,
              ),
              maxLines: 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NoteColor(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: FloatingActionButton(
                onPressed: () {},
                child: Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
