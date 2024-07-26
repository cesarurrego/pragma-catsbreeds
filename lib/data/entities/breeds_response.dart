import 'package:dart_mappable/dart_mappable.dart';
import 'package:pragma_test/data/entities/breed.dart';

part 'breeds_response.mapper.dart';

@MappableClass()
class BreedsResponse with BreedsResponseMappable {
  final List<Breed> breeds;

  const BreedsResponse({required this.breeds});
}
