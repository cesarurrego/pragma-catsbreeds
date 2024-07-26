import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pragma_test/app/detail/detail_page.dart';
import 'package:pragma_test/app/landing/landing_page_vm.dart';
import 'package:pragma_test/app/landing/widgets/error_tile_widget.dart';
import 'package:pragma_test/app/landing/widgets/search_bar_widget.dart';
import 'package:pragma_test/app/res/assets.dart';
import 'package:pragma_test/app/res/strings.dart';
import 'package:pragma_test/app/theme/app_insets.dart';
import 'package:pragma_test/app/theme/app_spacing.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final LandingPageViewModel viewModel = GetIt.I();
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, child) {
        final state = viewModel.state;
        return Scaffold(
          appBar: AppBar(
            title: Text(
              AppStrings.appName,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: const Size(kToolbarHeight, kToolbarHeight),
              child: AppSearchBar(
                controller: _searchController,
                hasText: state.searchText.isNotEmpty,
                onClearPressed: _clearSearch,
                onChanged: viewModel.onSearchChanged,
              ),
            ),
          ),
          body: Builder(
            builder: (context) {
              final state = viewModel.state;
              if (state.isLoading) {
                return const Center(child: CircularProgressIndicator());
              }

              if (state.error != null) {
                return Padding(
                  padding: AppInsets.large,
                  child: ErrorTile(
                    error: state.error!,
                    onRetryPressed: viewModel.onRetryPressed,
                  ),
                );
              }
              if (state.breeds.isEmpty) {
                return const Center(
                  child: Text(
                    AppStrings.noBreedsFound,
                    textAlign: TextAlign.center,
                  ),
                );
              }
              if (state.searchText.isNotEmpty && state.breedsFiltered.isNotEmpty) {
                return ListView.builder(
                  itemCount: state.breedsFiltered.length,
                  itemBuilder: (context, index) {
                    final breed = state.breedsFiltered[index];
                    return Padding(
                      padding: AppInsets.small,
                      child: _BreedCard(
                        onTap: () => _onBreedPressed(breed.id),
                        breedName: breed.name,
                        breedCountry: breed.origin,
                        breedIntelligence: breed.intelligence,
                        breedImage: Uri.parse('https://cdn2.thecatapi.com/images/${breed.referenceImageId}.jpg'),
                      ),
                    );
                  },
                );
              }
              return ListView.builder(
                itemCount: state.breeds.length,
                itemBuilder: (context, index) {
                  if (index == state.breeds.length - 1 && state.searchText.isEmpty) {
                    viewModel.fetchBreeds();
                  }
                  final breed = state.breeds[index];
                  return Padding(
                    padding: AppInsets.small,
                    child: _BreedCard(
                      onTap: () => _onBreedPressed(breed.id),
                      breedName: breed.name,
                      breedCountry: breed.origin,
                      breedIntelligence: breed.intelligence,
                      breedImage: Uri.parse('https://cdn2.thecatapi.com/images/${breed.referenceImageId}.jpg'),
                    ),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }

  void _onBreedPressed(String breedId) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (route) => DetailPage(breedId: breedId)),
    );
  }

  void _clearSearch() {
    _searchController.clear();
    viewModel.onClearSearchPressed();
  }
}

class _BreedCard extends StatelessWidget {
  final String breedName;
  final String breedCountry;
  final int breedIntelligence;
  final Uri breedImage;
  final VoidCallback onTap;

  const _BreedCard({
    required this.breedName,
    required this.breedCountry,
    required this.breedIntelligence,
    required this.breedImage,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const imageHeight = 240.0;

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: AppInsets.small,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  breedName,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const Text(AppStrings.more),
              ],
            ),
            AppSizedBox.small,
            CachedNetworkImage(
              height: imageHeight,
              width: double.infinity,
              imageUrl: breedImage.toString(),
              fit: BoxFit.cover,
              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => Image.asset(
                AppAssets.catLogo,
                height: imageHeight,
              ),
            ),
            AppSizedBox.small,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(breedCountry),
                Flexible(
                  child: Text('$breedIntelligence'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
