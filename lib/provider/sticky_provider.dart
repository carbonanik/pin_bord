import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_bord/models/sticky/sticky.dart';
import 'package:pin_bord/provider/is_test_provider.dart';
import 'package:pin_bord/provider/note_color_provider.dart';
import 'package:pin_bord/provider/pan_position_provider.dart';
import 'package:pin_bord/provider/sticky_local_provider.dart';
import 'package:pin_bord/provider/zindex_provider.dart';
import 'package:uuid/v4.dart';

class StickyNotifier extends ChangeNotifier {
  StickyNotifier(this.ref) {
    _init();
  }

  void _init() async {
    if ((await ref.read(stickyLocalProvider).getStickies()).isEmpty) {
      if (ref.read(isTestProvider)) {
        const count = 1001;
        final lastPos = const Offset(count * -100, count * -100) + const Offset(1000, 1000);
        final generated = List.generate(
          count,
          (index) {
            final pos = lastPos - Offset(index * -100, index * -100);
            return Sticky(
              id: index.toString(),
              title: "Sticky: $index",
              content: "This is a note \n $pos",
              zIndex: index,
              createdAt: DateTime.now(),
              updatedAt: DateTime.now(),
              position: pos,
              color: ref.read(colorsProvider)[index % ref.read(colorsProvider).length],
            );
          },
        );

        await ref.read(stickyLocalProvider).addStickyMany(generated);

        await ref.read(zIndexCounterProvider).updateZIndex(count);
      } else {
        await ref.read(stickyLocalProvider).addSticky(welcomeNote.id, welcomeNote);
        await ref.read(zIndexCounterProvider).updateZIndex(1);
      }
    }
    await __updateList();
  }

  final Ref ref;
  final List<Sticky> _notes = [];

  UnmodifiableListView<Sticky> get notes => UnmodifiableListView(_notes);

  Iterable<Sticky> inScreen({required Size screenSize, Offset cacheExtend = const Offset(-300, -200)}) {
    final panPosition = ref.watch(panPositionProvider);

    return notes.where((element) {
      final elementOffset = (element.position ?? Offset.zero) + panPosition;
      return Rect.fromPoints(
        cacheExtend,
        Offset(screenSize.width, screenSize.height),
      ).contains(elementOffset);
    });
  }

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

  Future<void> updateSticky(UpdateSticky sticky, String id) async {
    final oldSticky = await ref.read(stickyLocalProvider).getSticky(id);
    if (oldSticky == null) return;
    final updated = oldSticky.copyWith(
      title: sticky.title,
      content: sticky.content,
      color: sticky.color,
    );
    await ref.read(stickyLocalProvider).updateSticky(id, updated);
    await __updateList();
  }

  Sticky? getSticky(String id) {
    return _notes.firstWhere((element) => element.id == id);
  }

  Future<void> itemToTop(String id) async {
    print("before ${getSticky(id)?.zIndex}");
    final sticky = await ref.read(stickyLocalProvider).getSticky(id);
    if (sticky == null) return;

    final currentZIndex = await ref.read(zIndexCounterProvider).getZIndex();
    final stickyUpdate = sticky.copyWith(zIndex: currentZIndex + 1);
    await ref.read(stickyLocalProvider).updateSticky(id, stickyUpdate);
    await ref.read(zIndexCounterProvider).updateZIndex(currentZIndex + 1);
    await __updateList();
    print("after ${getSticky(id)?.zIndex}");
  }

  Future<void> updatePosition(Offset offset, String id) async {
    final sticky = await ref.read(stickyLocalProvider).getSticky(id);
    if (sticky == null) return;
    await ref.read(stickyLocalProvider).updateSticky(id, sticky.copyWith(position: offset));
    await __updateList();
  }

  Future<void> __updateList() async {
    final ns = await ref.read(stickyLocalProvider).getStickies();
    // ns.sort((a, b) => a.zIndex.compareTo(b.zIndex));
    _notes.clear();
    _notes.addAll(ns);
    notifyListeners();
  }
}

final stickyProvider = ChangeNotifierProvider<StickyNotifier>((ref) {
  return StickyNotifier(ref);
});

final Sticky welcomeNote = Sticky(
  id: const UuidV4().generate(),
  zIndex: 4,
  title: 'Welcome to Pin Bord!',
  content: 'Hey 👋 \n\nThis is a simple app to pin your notes. \n\n🎉',
  createdAt: DateTime.now(),
  updatedAt: DateTime.now(),
  color: unselectedColor,
);
