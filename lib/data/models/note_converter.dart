import 'package:flutter/material.dart';

import '../../domain/entities/note.dart';
import '../datasource/note_database.dart';

extension OffsetExt on Offset {
  String string() {
    return "${dx.toStringAsFixed(2)}:${dy.toStringAsFixed(2)}";
  }
}

extension StringExt on String {
  Offset toOffset() {
    final arr = split(':');
    return Offset(double.parse(arr[0]), double.parse(arr[1]));
  }
}

extension ColorExt on Color {
  int toInt() {
    return value;
  }
}

extension IntExt on int {
  Color toColor() {
    return Color(this);
  }
}

// extension NoteDataExt on NoteData {
//   Note toNote() {
//     return Note(
//       id: id,
//       title: title,
//       content: content,
//       createdAt: createdAt,
//       updatedAt: updatedAt,
//       color: color.toColor(),
//       position: position.toOffset(),
//     );
//   }
// }

// extension NoteExt on Note {
//   NoteData toNoteData() {
//     return NoteData(
//       id: id,
//       title: title,
//       content: content,
//       createdAt: createdAt,
//       updatedAt: updatedAt,
//       color: color?.toInt() ?? Colors.yellow.toInt(),
//       position: position?.string() ?? Offset.zero.string(),
//     );
//   }
// }

// extension on NoteData {
//   NotesCompanion toCompanion {
//     NotesCompanion(
//       id: id
//     )
//   }
// }
