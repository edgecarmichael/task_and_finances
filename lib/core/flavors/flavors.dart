enum Flavor {
  dev,
  hom,
  qa,
  prod,
}

extension FlavorExt on Flavor {
  String get title {
    switch (this) {
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

  bool get isDev => this == Flavor.dev;
  bool get isProd => this == Flavor.prod;
  bool get isQa => this == Flavor.qa;
  bool get isHom => this == Flavor.hom;

  String envUrl() {
    switch (this) {
      case Flavor.dev:
        return '';
      case Flavor.prod:
        return '';
      case Flavor.qa:
        return '';
      case Flavor.hom:
        return '';
      default:
        return '';
    }
  }
}
