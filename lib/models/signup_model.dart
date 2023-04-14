import 'dart:convert';

class SignUpModel {
  String email;
  String password;
  String confirmPassword;
  //String role;
  SignUpModel({
    required this.email,
    required this.password,
    required this.confirmPassword,
    //required this.role,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'confirmPassword': confirmPassword,
      // 'role': role,
    };
  }

  factory SignUpModel.fromMap(Map<String, dynamic> map) {
    return SignUpModel(
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      confirmPassword: map['confirmPassword'] ?? '',
      // role: map['role'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SignUpModel.fromJson(String source) =>
      SignUpModel.fromMap(json.decode(source));
}
