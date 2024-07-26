import 'package:dart_mappable/dart_mappable.dart';
import 'package:pragma_test/data/entities/breed.dart';

part 'breed_image.mapper.dart';

@MappableClass()
class BreedImage with BreedImageMappable {
  final String? id;
  final String? url;
  final List<Breed>? breeds;
  final int? width;
  final int? height;

  BreedImage({
    this.id,
    this.url,
    this.breeds,
    this.width,
    this.height,
  });
}
