enum Flavor {
  dev,
  hom,
  qa,
  prod,
}

extension FlavorName on Flavor {
  String get name => this.toString().split('.').last;
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Task and Finances DEV';
      case Flavor.hom:
        return 'Task and Finances HOM';
      case Flavor.qa:
        return 'Task and Finances QA';
      case Flavor.prod:
        return 'Task and Finances';
      default:
        return 'title';
    }
  }
}
