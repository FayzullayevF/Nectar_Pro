class SignUpModel {
  final String password, username, email;
  SignUpModel({
    required this.email,
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toJson(){
    return {
      "email": email,
      "password": password,
      "username": username
    };
  }
}
