enum Flavor { dev, hom, qa, prod }

Flavor appFlavor = Flavor.dev;

extension FlavorExt on Flavor {
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

  bool get isDev => this == Flavor.dev;
  bool get isProd => this == Flavor.prod;
  bool get isQa => this == Flavor.qa;
  bool get isHom => this == Flavor.hom;

  String get envFile {
    switch (this) {
      case Flavor.dev:
        return '.env_dev';
      case Flavor.prod:
        return '.env';
      case Flavor.qa:
        return '.env_qa';
      case Flavor.hom:
        return '.env_hom';
      default:
        return '.env';
    }
  }
}
