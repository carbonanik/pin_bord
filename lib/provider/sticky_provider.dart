import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_bord/models/sticky/sticky.dart';
import 'package:pin_bord/presentation/widget/svg_sticker_data.dart';
import 'package:pin_bord/provider/is_test_provider.dart';
import 'package:pin_bord/provider/note_color_provider.dart';
import 'package:pin_bord/provider/screen_size_provider.dart';
import 'package:pin_bord/provider/sticky_local_provider.dart';
import 'package:pin_bord/provider/zindex_provider.dart';
import 'package:uuid/v4.dart';

class StickyNotifier extends ChangeNotifier {
  StickyNotifier(this.ref) {
    _init();
  }

  void _init() async {
    if ((ref.read(stickyLocalProvider).getStickies()).isEmpty) {
      if (ref.read(isTestProvider)) {
        final generated = generatedTestStickies(ref: ref);
        _notes.addAll(generated);
        _maxZIndex = generated.length;
      } else {
        _notes.add(welcomeNote());
        _notes.add(welcomeSticker());
        _maxZIndex = 1;
      }
      // add to local storage
      await ref.read(stickyLocalProvider).addStickyMany(_notes);
      await ref.read(zIndexCounterProvider).updateZIndex(_maxZIndex);
    } else {
      _notes.addAll(ref.read(stickyLocalProvider).getStickies());
      _maxZIndex = ref.read(zIndexCounterProvider).getZIndex();
    }
    __updateList();
  }

  final Ref ref;
  final List<Sticky> _notes = [];
  final List<Sticky> _trash = [];
  final List<Sticky> _dirty = [];

  int _maxZIndex = 0;

  UnmodifiableListView<Sticky> get notes => UnmodifiableListView(_notes);

  Sticky? getSticky(String id) {
    return _notes.firstWhere((element) => element.id == id);
  }

  void createStickySticker({
    required String title,
    required String sticker,
  }) {
    final sticky = Sticky.empty().copyWith(
      zIndex: ++_maxZIndex,
      title: title,
      content: sticker,
      type: StickyType.sticker,
      size: const Size(160, 160),
    );
    _createSticky(sticky);
  }

  void createStickyNote({
    required String title,
    required String content,
    Color? color,
  }) {
    final sticky = Sticky.empty().copyWith(
      zIndex: ++_maxZIndex,
      title: title,
      content: content,
      color: color,
    );
    _createSticky(sticky);
  }

  void _createSticky(Sticky sticky) {
    final id = const UuidV4().generate();
    sticky = sticky.copyWith(id: id);
    _notes.add(sticky);
    _dirty.add(sticky);
    __updateList();
  }

  void removeSticky(String id) {
    _trash.add(_notes.firstWhere((element) => element.id == id));
    _notes.removeWhere((element) => element.id == id);
    __updateList();
  }

  void updateSticky({
    required String id,
    String? title,
    String? content,
    Color? color,
  }) {
    final sticky = getSticky(id);
    if (sticky == null) return;

    final updated = sticky.copyWith(
      title: title ?? sticky.title,
      content: content ?? sticky.content,
      color: color ?? sticky.color,
    );
    _notes[_notes.indexOf(sticky)] = updated;
    _dirty.add(updated);

    __updateList();
  }

  void updateZIndex(String id) {
    final sticky = getSticky(id);
    if (sticky == null) return;

    final updated = sticky.copyWith(zIndex: ++_maxZIndex);
    _notes[_notes.indexOf(sticky)] = updated;
    _dirty.add(updated);

    __updateList();
  }

  void updatePosition(Offset offset, String id) {
    final sticky = getSticky(id);
    if (sticky == null) return;

    final updated = sticky.copyWith(position: offset);
    _notes[_notes.indexOf(sticky)] = updated;
    _dirty.add(updated);

    __updateList();
  }

  void __updateList() async {
    notifyListeners();
    if (_dirty.isNotEmpty) {
      await ref.read(stickyLocalProvider).addStickyMany(_dirty);
      _dirty.clear();
    }
    while (_trash.isNotEmpty) {
      await ref.read(stickyLocalProvider).removeSticky(_trash.removeLast().id);
    }
    if (ref.read(zIndexCounterProvider).getZIndex() != _maxZIndex) {
      ref.read(zIndexCounterProvider).updateZIndex(_maxZIndex);
    }
  }
}

final stickyProvider = ChangeNotifierProvider<StickyNotifier>((ref) {
  return StickyNotifier(ref);
});

Sticky welcomeNote() => Sticky.empty().copyWith(
      id: const UuidV4().generate(),
      zIndex: 4,
      title: 'Welcome to Pin Bord!',
      content: 'Hey 👋 \n\nThis is a simple app to pin your notes. \n\n🎉',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      color: unselectedColor,
      type: StickyType.note,
      position: const Offset(300, 400),
      size: const Size(300, 300),
    );

Sticky welcomeSticker() => Sticky.empty().copyWith(
      id: const UuidV4().generate(),
      zIndex: 3,
      title: 'Sticker One',
      content: SvgStickerData.calender,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      color: unselectedColor,
      type: StickyType.sticker,
      position: const Offset(360, 200),
      size: const Size(160, 160),
    );

List<Sticky> generatedTestStickies({required Ref ref, int count = 1001}) {
  final lastPos = Offset(count * -100, count * -100) + const Offset(1000, 1000);
  final generated = List.generate(
    count,
    (index) {
      final pos = lastPos - Offset(index * -100, index * -100);

      // double x = (index % 25) * -400 + Random().nextInt(200).toDouble();
      // double y = (index / 25) * -300 + Random().nextInt(200).toDouble();
      // final pos = Offset(x, y) + const Offset(1000, 1000);

      return Sticky.empty().copyWith(
        id: const UuidV4().generate(),
        title: "Sticky: $index",
        content: "This is a note \n $pos",
        zIndex: index,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        position: pos,
        // color: ref.read(colorsProvider)[Random().nextInt(ref.read(colorsProvider).length)],
        color:
            ref.read(colorsProvider)[index % ref.read(colorsProvider).length],
      );
    },
  );
  return generated;
}
