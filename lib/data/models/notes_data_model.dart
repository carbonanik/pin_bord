import 'package:drift/drift.dart';

@DataClassName('NoteData')
class Notes extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1, max: 100)();
  TextColumn get content => text().withLength(min: 1, max: 1000)();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
  TextColumn get position => text().withLength(min: 1, max: 50)();
  IntColumn get color => integer()();
}
