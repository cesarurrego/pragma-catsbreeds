import 'package:pragma_test/common/api_client.dart';
import 'package:pragma_test/data/entities/breed.dart';
import 'package:pragma_test/data/entities/breed_image.dart';
import 'package:pragma_test/data/entities/breeds_request.dart';
import 'package:pragma_test/data/entities/breeds_response.dart';

class BreedClient {
  final ApiClient _apiClient;
  final String _apiKey;

  BreedClient(this._apiClient, this._apiKey);

  Future<BreedsResponse> fetchBreeds(BreedsRequest request) async {
    final path = '/v1/breeds?limit=${request.limit}&page=${request.page}';
    final response = await _apiClient.get(path);
    final breedsData = response.data as List<dynamic>;
    return BreedsResponseMapper.fromMap({'breeds': breedsData});
  }

  Future<BreedsResponse> fetchBreedsByQuery(String query) async {
    final path = '/v1/breeds/search?q=$query&attach_image=1';
    final response = await _apiClient.get(path);
    final breedsData = response.data as List<dynamic>;
    return BreedsResponseMapper.fromMap({'breeds': breedsData});
  }

  Future<Breed> fetchBreedById(String id) async {
    final path = '/v1/breeds/$id';
    final response = await _apiClient.get(path);
    return BreedMapper.fromMap(response.data);
  }

  Future<BreedImage> fetchImageById(String id) async {
    final path = '/v1/images/$id';
    final headers = {'x-api-key': _apiKey};
    final response = await _apiClient.get(path, headers: headers);
    return BreedImageMapper.fromMap(response.data);
  }
}
