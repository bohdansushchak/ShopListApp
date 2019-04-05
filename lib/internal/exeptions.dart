library exceptions;

class ServerException implements Exception {
  String message;
  int code;
  ServerException({this.message, this.code});
}
