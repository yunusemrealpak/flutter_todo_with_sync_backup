enum ResponseErrorCode {
  connectionLost,
  serverError,
}

extension RespIntExtensions on int {
  ResponseErrorCode? get code {
    switch (this) {
      case 1:
        return ResponseErrorCode.serverError;
      case -1:
        return ResponseErrorCode.connectionLost;
      default:
        return null;
    }
  }
}

extension RespExtensions on ResponseErrorCode {
  int? get rawValue {
    switch (this) {
      case ResponseErrorCode.serverError:
        return 1;
      case ResponseErrorCode.connectionLost:
        return -1;
    }
  }
}