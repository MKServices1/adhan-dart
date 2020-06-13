import 'internal/shadow_length.dart';

enum Madhab {
  /// Shafi Madhab
  shafi,

  /// Hanafi Madhab
  hanafi
}

extension MadhabExtensions on Madhab {
  ShadowLength getShadowLength() {
    switch (this) {
      case Madhab.shafi:
        {
          return ShadowLength.single;
        }
      case Madhab.hanafi:
        {
          return ShadowLength.double;
        }
      default:
        {
          throw FormatException('Invalid Madhab');
        }
    }
  }
}
