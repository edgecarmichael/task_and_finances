import 'package:task_and_finances/app/core/database/migrations/migration_v1.dart';

import 'migrations/migration.dart';

class SqliteMigrationsFactory {
  List<Migration> getCreateMigration() => [
        MigrationV1(),
      ];

  List<Migration> getUpgrateMigration(int version) => [];
}
