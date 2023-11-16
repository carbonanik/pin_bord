
import 'package:pin_bord/models/sticky/sticky.dart';

abstract class StickyLocal {

  Future<List<Sticky>> getStickies();

  Future<Sticky?> getSticky(String id);

  Future<void> addSticky(String id, Sticky sticky);

  Future<void> removeSticky(String id);

  Future<void> updateSticky(String id, Sticky sticky);
}