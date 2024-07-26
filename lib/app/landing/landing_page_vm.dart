import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:pragma_test/common/api_response.dart';
import 'package:pragma_test/data/entities/breed.dart';
import 'package:pragma_test/data/entities/breeds_request.dart';
import 'package:pragma_test/data/entities/breeds_response.dart';
import 'package:pragma_test/data/repositories/breeds_repository.dart';

@immutable
class LandingPageState {
  final List<Breed> breeds;
  final List<Breed> breedsFiltered;
  final String searchText;
  final int currentPage;
  final bool isLastPage;
  final bool isLoading;
  final String? error;

  const LandingPageState({
    this.breeds = const [],
    this.breedsFiltered = const [],
    this.searchText = '',
    this.currentPage = 0,
    this.isLastPage = false,
    this.isLoading = false,
    this.error,
  });

  LandingPageState copyWith({
    List<Breed>? breeds,
    List<Breed>? breedsFiltered,
    String? searchText,
    int? currentPage,
    bool? isLastPage,
    bool? isLoading,
    String? error,
  }) {
    return LandingPageState(
      breeds: breeds ?? this.breeds,
      breedsFiltered: breedsFiltered ?? this.breedsFiltered,
      searchText: searchText ?? this.searchText,
      currentPage: currentPage ?? this.currentPage,
      isLastPage: isLastPage ?? this.isLastPage,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}

class LandingPageViewModel extends ChangeNotifier {
  final BreedsRepository _breedsRepository;
  static const _pageSize = 10;

  LandingPageState state = const LandingPageState();
  Timer? _debounce;

  LandingPageViewModel(this._breedsRepository) {
    _init();
  }

  void _init() {
    _emitLoading(true);
    fetchBreeds();
  }

  Future<void> fetchBreeds() async {
    if (state.isLastPage) {
      return;
    }

    final response = await _breedsRepository.fetchBreeds(
      BreedsRequest(limit: _pageSize, page: state.currentPage),
    );
    _emitLoading(false);

    if (response is Success<BreedsResponse>) {
      final isLastPage = response.data.breeds.length < _pageSize;
      state = state.copyWith(
        breeds: [...state.breeds, ...response.data.breeds],
        currentPage: state.currentPage + 1,
        isLastPage: isLastPage,
      );
    } else {
      state = state.copyWith(error: (response as Error).message);
    }

    notifyListeners();
  }

  Future<void> _fetchBreedsByQuery(String query) async {
    _emitLoading(true);
    final response = await _breedsRepository.fetchBreedsByQuery(query);
    _emitLoading(false);
    state = response is Success<BreedsResponse>
        ? state.copyWith(breedsFiltered: response.data.breeds)
        : state.copyWith(error: (response as Error).message);
    notifyListeners();
  }

  void onRetryPressed() {
    _init();
  }

  void onSearchChanged(String value) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      state = state.copyWith(searchText: value);
      notifyListeners();
      _fetchBreedsByQuery(value);
    });
  }

  void onClearSearchPressed() {
    state = state.copyWith(searchText: '');
    notifyListeners();
  }

  void _emitLoading(bool value) {
    state = state.copyWith(isLoading: value);
    notifyListeners();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }
}
