import 'package:dart_mappable/dart_mappable.dart';

part 'breed.mapper.dart';

@MappableClass()
class Breed with BreedMappable {
  final BreedWeight weight;
  final String id;
  final String name;
  @MappableField(key: "cfa_url")
  final String? cfaUrl;
  @MappableField(key: "vetstreet_url")
  final String? vetstreetUrl;
  @MappableField(key: "vcahospitals_url")
  final String? vcahospitalsUrl;
  final String temperament;
  final String origin;
  @MappableField(key: "country_codes")
  final String countryCodes;
  @MappableField(key: "country_code")
  final String countryCode;
  @MappableField(key: "description")
  final String description;
  @MappableField(key: "life_span")
  final String lifeSpan;
  final int indoor;
  final int? lap;
  @MappableField(key: "alt_names")
  final String? altNames;
  @MappableField(key: "adaptability")
  final int adaptability;
  @MappableField(key: "affection_level")
  final int affectionLevel;
  @MappableField(key: "child_friendly")
  final int childFriendly;
  @MappableField(key: "dog_friendly")
  final int dogFriendly;
  @MappableField(key: "energy_level")
  final int energyLevel;
  final int grooming;
  @MappableField(key: "health_issues")
  final int healthIssues;
  @MappableField(key: "intelligence")
  final int intelligence;
  @MappableField(key: "shedding_level")
  final int sheddingLevel;
  @MappableField(key: "social_needs")
  final int socialNeeds;
  @MappableField(key: "stranger_friendly")
  final int strangerFriendly;
  final int vocalisation;
  final int experimental;
  final int hairless;
  final int natural;
  final int rare;
  final int rex;
  @MappableField(key: "suppressed_tail")
  final int suppressedTail;
  @MappableField(key: "short_legs")
  final int shortLegs;
  @MappableField(key: "wikipedia_url")
  final String? wikipediaUrl;
  final int hypoallergenic;
  @MappableField(key: "reference_image_id")
  final String? referenceImageId;

  const Breed({
    required this.weight,
    required this.id,
    required this.name,
    this.cfaUrl,
    this.vetstreetUrl,
    this.vcahospitalsUrl,
    required this.temperament,
    required this.origin,
    required this.countryCodes,
    required this.countryCode,
    required this.description,
    required this.lifeSpan,
    required this.indoor,
    this.lap,
    this.altNames,
    required this.adaptability,
    required this.affectionLevel,
    required this.childFriendly,
    required this.dogFriendly,
    required this.energyLevel,
    required this.grooming,
    required this.healthIssues,
    required this.intelligence,
    required this.sheddingLevel,
    required this.socialNeeds,
    required this.strangerFriendly,
    required this.vocalisation,
    required this.experimental,
    required this.hairless,
    required this.natural,
    required this.rare,
    required this.rex,
    required this.suppressedTail,
    required this.shortLegs,
    this.wikipediaUrl,
    required this.hypoallergenic,
    this.referenceImageId,
  });
}

@MappableClass()
class BreedWeight with BreedWeightMappable {
  @MappableField(key: "imperial")
  final String imperial;
  @MappableField(key: "metric")
  final String metric;

  const BreedWeight({
    required this.imperial,
    required this.metric,
  });
}
