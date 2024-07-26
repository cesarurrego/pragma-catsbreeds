import 'package:flutter/cupertino.dart';
import 'package:pragma_test/common/api_response.dart';
import 'package:pragma_test/data/entities/breed.dart';
import 'package:pragma_test/data/repositories/breeds_repository.dart';

@immutable
class DetailPageState {
  final Breed? breed;
  final bool isLoading;
  final String? error;

  const DetailPageState({
    this.breed,
    this.isLoading = false,
    this.error,
  });

  DetailPageState copyWith({
    Breed? breed,
    bool? isLoading,
    String? error,
  }) {
    return DetailPageState(
      breed: breed ?? this.breed,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}

class DetailPageViewModel extends ChangeNotifier {
  final BreedsRepository _breedsRepository;

  DetailPageState state = const DetailPageState();

  DetailPageViewModel(this._breedsRepository);

  void init(String breedId) {
    _fetchCatsBreeds(breedId);
  }

  Future<void> _fetchCatsBreeds(String breedId) async {
    _emitLoading(true);
    final response = await _breedsRepository.fetchBreedById(breedId);
    _emitLoading(false);
    state = response is Success<Breed>
        ? state.copyWith(breed: response.data)
        : state.copyWith(error: (response as Error).message);
    notifyListeners();
  }

  void _emitLoading(bool value) {
    state = state.copyWith(isLoading: value);
    notifyListeners();
  }
}
