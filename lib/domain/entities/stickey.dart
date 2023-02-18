// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Stickey extends Equatable {
  const Stickey({
    required this.id,
    required this.title,
    required this.content,
    required this.createdAt,
    required this.updatedAt,
    this.position,
    this.color,
    this.size,
  });

  final int id;
  final String title;
  final String content;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Color? color;
  final Offset? position;
  final Size? size;

  @override
  String toString() {
    return 'Note(id: $id, title: $title, content: $content, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  List<Object?> get props =>
      [id, title, content, createdAt, updatedAt, color, position, size];

  Stickey copyWith({
    int? id,
    String? title,
    String? content,
    DateTime? createdAt,
    DateTime? updatedAt,
    Color? color,
    Offset? position,
    Size? size,
  }) {
    return Stickey(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      color: color ?? this.color,
      position: position ?? this.position,
      size: size ?? this.size,
    );
  }
}
