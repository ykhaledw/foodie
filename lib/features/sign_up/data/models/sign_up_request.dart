class SignUpRequest {
  final String name;
  final String email;
  final String password;
  final String phone;
  final String? userType;
  final String? avatarUrl;

  SignUpRequest({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    this.userType = 'Customer',
    this.avatarUrl,
  });
}
