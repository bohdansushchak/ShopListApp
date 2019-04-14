library exceptions;

class ServerException implements Exception {
  String message;
  ServerException(this.message);
}

class NoOrdersException implements Exception {
  final message = "No orders";
}

class UnauthorizedException implements Exception {
  final message = "User is unauthorized";
}

class NoConnectivityException implements Exception {
  final message = "No internet connection";
}
