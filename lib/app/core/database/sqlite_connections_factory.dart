import 'package:path/path.dart';
import 'package:synchronized/synchronized.dart';
import 'package:sqflite/sqflite.dart';
import 'package:task_and_finances/app/core/database/sqlite_migrations_factory.dart';

class SqliteConnectionsFactory {
  // ignore: constant_identifier_names
  static const _VERSION = 1;
  // ignore: constant_identifier_names
  static const _DATABASE_NAME = 'TODO_LIST_PROVIDER';

  static SqliteConnectionsFactory? _instance;

  Database? _db;
  final _lock = Lock();

  SqliteConnectionsFactory._();

  factory SqliteConnectionsFactory() {
    if (_instance == null) {
      return _instance = SqliteConnectionsFactory._();
    }

    return _instance!;
  }

  Future<Database> openConnection() async {
    var databasePath = await getDatabasesPath();
    var databasePathFinal = join(databasePath, _DATABASE_NAME);
    if (_db == null) {
      await _lock.synchronized(() async => {
            if (_db == null)
              {
                _db = await openDatabase(
                  databasePathFinal,
                  version: _VERSION,
                  onConfigure: onConfigure,
                  onCreate: onCreate,
                  onUpgrade: onUpgrade,
                  onDowngrade: onDowgrade,
                )
              }
          });
    }
    return _db!;
  }

  void closeConnection() {
    _db?.close();
    _db = null;
  }

  Future<void> onConfigure(Database db) async {
    await db.execute('PRAGMA foreign_keys = ON');
  }

  Future<void> onCreate(Database db, int version) async {
    final batch = db.batch();

    final migrations = SqliteMigrationsFactory().getCreateMigration();

    for (var migration in migrations) {
      migration.create(batch);
    }

    batch.commit();
  }

  Future<void> onUpgrade(Database db, int oldVersion, int version) async {
    final batch = db.batch();
    final migrations = SqliteMigrationsFactory().getUpgrateMigration(version);

    for (var migration in migrations) {
      migration.update(batch);
    }

    batch.commit();
  }

  Future<void> onDowgrade(Database db, int oldVersion, int version) async {}
}
