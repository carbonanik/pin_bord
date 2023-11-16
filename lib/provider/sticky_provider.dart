import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_bord/models/sticky/sticky.dart';
import 'package:pin_bord/provider/sticky_local_provider.dart';
import 'package:pin_bord/provider/zindex_provider.dart';
import 'package:uuid/v4.dart';

class StickyNotifier extends ChangeNotifier {
  StickyNotifier(this.ref) {
    _init();
  }
  
  void _init() async {
    if ((await ref.read(stickyLocalProvider).getStickies()).isEmpty) {
      for (var note in staticNotes) {
        ref.read(stickyLocalProvider).addSticky(note.id, note);
      }
      await ref.read(zIndexCounterProvider).updateZIndex(4);
    }
    await __updateList();
  }

  final Ref ref;
  final List<Sticky> _notes = [];

  UnmodifiableListView<Sticky> get notes => UnmodifiableListView(_notes);

  Future<void> createSticky(CreateSticky createSticky) async {
    final id = const UuidV4().generate();

    final zIndex = await ref.read(zIndexCounterProvider).getZIndex();
    final sticky = Sticky.initial().copyWith(
      id: id,
      title: createSticky.title,
      content: createSticky.content,
      color: createSticky.color,
      zIndex: zIndex + 1,
    );
    await ref.read(stickyLocalProvider).addSticky(sticky.id, sticky);
    await ref.read(zIndexCounterProvider).updateZIndex(zIndex + 1);
    await __updateList();
  }

  Future<void> removeSticky(String id) async {
    await ref.read(stickyLocalProvider).removeSticky(id);
    await __updateList();
  }

  Future<void> itemToTop(String id) async {

    final sticky = await ref.read(stickyLocalProvider).getSticky(id);
    if(sticky == null) return;

    final currentZIndex = await ref.read(zIndexCounterProvider).getZIndex();
    final stickyUpdate = sticky.copyWith(zIndex: currentZIndex + 1);
    await ref.read(stickyLocalProvider).updateSticky(id, stickyUpdate);
    await ref.read(zIndexCounterProvider).updateZIndex(currentZIndex + 1);

    await __updateList();
  }

  Future<void> updatePosition(Offset offset, String id) async {
    // final i = _notes.indexWhere((element) => element.id == id);
    // final su = _notes[i].copyWith(position: offset);
    // _notes[i] = su;
    final sticky = await ref.read(stickyLocalProvider).getSticky(id);
    if (sticky == null) return;
    await ref.read(stickyLocalProvider).updateSticky(id, sticky.copyWith(position: offset));
    await __updateList();
  }

  Future<void> __updateList() async {
    final ns = await ref.read(stickyLocalProvider).getStickies();
    ns.sort((a, b) => a.zIndex.compareTo(b.zIndex));
    _notes.clear();
    _notes.addAll(ns);
    notifyListeners();
  }
}

final stickyProvider = ChangeNotifierProvider<StickyNotifier>((ref) {
  return StickyNotifier(ref);
});

final List<Sticky> staticNotes = [
  Sticky(
    id: const UuidV4().generate(),
    zIndex: 1,
    title: 'Note 1',
    content: 'Note 1 Content',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    color: colors[0],
    position: const Offset(10, 10),
  ),
  Sticky(
    id: const UuidV4().generate(),
    zIndex: 2,
    title: 'Note 2',
    content: 'Note 2 Content',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    color: colors[1],
    position: const Offset(50, 50),
  ),
  Sticky(
    id: const UuidV4().generate(),
    zIndex: 3,
    title: 'Note 3',
    content: 'Note 3 Content',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    color: colors[2],
    position: const Offset(100, 100),
  ),
  Sticky(
    id: const UuidV4().generate(),
    zIndex: 4,
    title: 'Note 4',
    content: 'Note 4 Content',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    color: colors[3],
    position: const Offset(150, 150),
  ),
];

final colors = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
];
