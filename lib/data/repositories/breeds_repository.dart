import 'package:flutter/foundation.dart';
import 'package:pragma_test/common/api_response.dart';
import 'package:pragma_test/data/clients/breed_client.dart';
import 'package:pragma_test/data/entities/breed.dart';
import 'package:pragma_test/data/entities/breed_image.dart';
import 'package:pragma_test/data/entities/breeds_request.dart';
import 'package:pragma_test/data/entities/breeds_response.dart';

abstract class BreedsRepository {
  Future<ApiResponse> fetchBreeds(BreedsRequest request);

  Future<ApiResponse> fetchBreedsByQuery(String query);

  Future<ApiResponse> fetchBreedById(String id);

  Future<ApiResponse> fetchImageById(String id);
}

class BreedsRepositoryImpl extends BreedsRepository {
  final BreedClient _catsClient;

  BreedsRepositoryImpl(this._catsClient);

  @override
  Future<ApiResponse> fetchBreeds(BreedsRequest request) async {
    try {
      final breeds = await _catsClient.fetchBreeds(request);
      return Success<BreedsResponse>(breeds);
    } catch (err, stackTrace) {
      debugPrint('${err.toString()} ${stackTrace.toString()}');
      return Error(err.toString());
    }
  }

  @override
  Future<ApiResponse> fetchBreedsByQuery(String query) async {
    try {
      final breeds = await _catsClient.fetchBreedsByQuery(query);
      return Success<BreedsResponse>(breeds);
    } catch (err, stackTrace) {
      debugPrint('${err.toString()} ${stackTrace.toString()}');
      return Error(err.toString());
    }
  }

  @override
  Future<ApiResponse> fetchBreedById(String id) async {
    try {
      final breed = await _catsClient.fetchBreedById(id);
      return Success<Breed>(breed);
    } catch (err, stackTrace) {
      debugPrint('${err.toString()} ${stackTrace.toString()}');
      return Error(err.toString());
    }
  }

  @override
  Future<ApiResponse> fetchImageById(String id) async {
    try {
      final image = await _catsClient.fetchImageById(id);
      return Success<BreedImage>(image);
    } catch (err, stackTrace) {
      debugPrint('${err.toString()} ${stackTrace.toString()}');
      return Error(err.toString());
    }
  }
}
