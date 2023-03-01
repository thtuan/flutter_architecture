import 'package:json_annotation/json_annotation.dart';

part 'auth.g.dart';

@JsonSerializable()
class Auth {
  final String assetToken;
  final String refreshToken;

  Auth(this.assetToken, this.refreshToken);

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);

  Map<String, dynamic> toJson() => _$AuthToJson(this);

  bool isAuthenticated() {
    return true;
  }
}
