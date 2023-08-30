import '../base/base_api.dart';

class PostApiService {
  final BaseApi _baseApi;

  PostApiService(this._baseApi);

  Future<dynamic> fetchPosts() async {
    final response = await _baseApi.get('/posts');
    // handle the response, decode, error handling...
  }

  // other post-specific API calls like createPost, deletePost, etc.
}
