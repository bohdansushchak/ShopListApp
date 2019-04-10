library login_result;

class LoginResult {

  int id;
  String email;
  String updatedAt;
  String createdAt;
  String apiToken;
//TODO : add api_token_expires

  LoginResult._(
      {this.id, this.email, this.updatedAt, this.createdAt, this.apiToken});

  factory LoginResult.fromJson(Map<String, dynamic> mapJson) {
    return new LoginResult._(
      id: mapJson["id"],
      email: mapJson["email"],
      apiToken: mapJson["api_token"],
      createdAt: mapJson["created_at"],
      updatedAt: mapJson["updated_at"],
    );
  }
}
