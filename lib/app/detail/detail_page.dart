import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pragma_test/app/detail/detail_page_vm.dart';
import 'package:pragma_test/app/res/assets.dart';
import 'package:pragma_test/app/res/strings.dart';
import 'package:pragma_test/app/theme/app_insets.dart';
import 'package:pragma_test/app/theme/app_spacing.dart';

class DetailPage extends StatefulWidget {
  final String breedId;

  const DetailPage({
    super.key,
    required this.breedId,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final DetailPageViewModel viewModel = GetIt.I();

  @override
  void initState() {
    viewModel.init(widget.breedId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;

    final imageHeight = screenHeight / 2;

    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, child) {
        final state = viewModel.state;
        return Scaffold(
          appBar: AppBar(
            title: Text(
              state.breed?.name ?? widget.breedId,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            centerTitle: true,
            bottom: state.isLoading
                ? null
                : PreferredSize(
                    preferredSize: Size(double.infinity, imageHeight),
                    child: CachedNetworkImage(
                      imageUrl: 'https://cdn2.thecatapi.com/images/${state.breed?.referenceImageId}.jpg',
                      height: imageHeight,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) => Image.asset(
                        AppAssets.catLogo,
                        height: imageHeight,
                      ),
                    ),
                  ),
          ),
          body: Builder(
            builder: (context) {
              if (state.isLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              return SingleChildScrollView(
                padding: AppInsets.small,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(viewModel.state.breed?.description ?? ''),
                    AppSizedBox.small,
                    _BreedDetailTile(
                      title: AppStrings.origin,
                      value: viewModel.state.breed?.origin ?? '',
                    ),
                    AppSizedBox.small,
                    _BreedDetailTile(
                      title: AppStrings.intelligence,
                      value: '${viewModel.state.breed?.intelligence ?? 0}',
                    ),
                    AppSizedBox.small,
                    _BreedDetailTile(
                      title: AppStrings.adaptability,
                      value: '${viewModel.state.breed?.adaptability ?? 0}',
                    ),
                    AppSizedBox.small,
                    _BreedDetailTile(
                      title: AppStrings.lifeSpan,
                      value: viewModel.state.breed?.lifeSpan ?? '',
                    ),
                    AppSizedBox.small,
                    _BreedDetailTile(
                      title: AppStrings.temperament,
                      value: viewModel.state.breed?.temperament ?? '',
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class _BreedDetailTile extends StatelessWidget {
  final String title;
  final String value;

  const _BreedDetailTile({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const TextSpan(text: ': '),
          TextSpan(text: value),
        ],
      ),
    );
  }
}
