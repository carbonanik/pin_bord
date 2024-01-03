
import 'package:pin_bord/models/sticky/sticky.dart';

abstract class StickyLocal {

  List<Sticky> getStickies();

  Sticky? getSticky(String id);

  Future<void> addSticky(Sticky sticky);

  Future<void> addStickyMany(Iterable<Sticky> stickies);

  Future<void> removeSticky(String id);
}