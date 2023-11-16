abstract class ZIndexCounter {
  Future<int> getZIndex();
  Future<void> updateZIndex(int zIndex);
  Future<void> incrementZIndex();
}