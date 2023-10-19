import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteColor extends StatefulWidget {
  const NoteColor({
    super.key,
  });

  @override
  State<NoteColor> createState() => _NoteColorState();
}

class _NoteColorState extends State<NoteColor> {
  Color? selectedColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _color(Colors.white),
        _color(Colors.yellow[100]),
        _color(Colors.green[100]),
        _color(Colors.blue[100]),
        _color(Colors.purple[100]),
        _color(Colors.orange[100]),
        _color(Colors.red[100]),
        _color(Colors.grey)
      ],
    );
  }

  Widget _color(color) {
    final isSelected = selectedColor == color;

    return InkWell(
      onTap: () {
        setState(() {
          selectedColor = color;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            color: color.withOpacity(isSelected ? 1.0 : 0.5),
            border: Border.all(
                color: Colors.black.withOpacity(isSelected ? 1.0 : 0.5)),
            shape: BoxShape.circle,
            boxShadow: isSelected
                ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    ),
                  ]
                : [],
          ),
        ),
      ),
    );
  }
}
