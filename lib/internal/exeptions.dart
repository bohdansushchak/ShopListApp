library exceptions;

class ServerException implements Exception {
  String message;
  int code;
  ServerException({this.message, this.code});
}

class NoOrdersException implements Exception {
  final message = "No orders";
}

class UnauthorizedException implements Exception {}

class NoConnectivityException implements Exception {
  final message = "No internet connection";
}
