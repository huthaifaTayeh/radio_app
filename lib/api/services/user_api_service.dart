import '../base/base_api.dart';

class UserApiService {
  final BaseApi _baseApi;

  UserApiService(this._baseApi);

  Future<dynamic> login(String email, String password) async {
    final response = await _baseApi.post('/login', body: {
      'email': email,
      'password': password,
    });
    // handle the response, decode, error handling...
  }

  // other user-specific API calls like register, getProfile, etc.
}
