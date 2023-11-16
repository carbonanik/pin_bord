import 'dart:ui';

import 'package:hive/hive.dart';

class ColorAdapter extends TypeAdapter<Color> {
  @override
  final typeId = 221;

  @override
  Color read(BinaryReader reader) => Color(reader.readUint32());

  @override
  void write(BinaryWriter writer, Color obj) => writer.writeUint32(obj.value);
}

class OffsetAdapter extends TypeAdapter<Offset> {
  @override
  final typeId = 222;

  @override
  Offset read(BinaryReader reader) => Offset(reader.readDouble(), reader.readDouble());

  @override
  void write(BinaryWriter writer, Offset obj) => writer
    ..writeDouble(obj.dx)
    ..writeDouble(obj.dy);
}

class SizeAdapter extends TypeAdapter<Size> {
  @override
  final typeId = 223;

  @override
  Size read(BinaryReader reader) => Size(reader.readDouble(), reader.readDouble());

  @override
  void write(BinaryWriter writer, Size obj) => writer
    ..writeDouble(obj.width)
    ..writeDouble(obj.height);
}
