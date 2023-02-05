// ignore_for_file: constant_identifier_names

enum HttpTypes {
  GET,
  POST,
}

extension HttpExtensions on HttpTypes {
  String get rawValue {
    switch (this) {
      case HttpTypes.GET:
        return 'GET';
      case HttpTypes.POST:
        return 'POST';
    }
  }
}