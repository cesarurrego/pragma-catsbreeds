// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'breed.dart';

class BreedMapper extends ClassMapperBase<Breed> {
  BreedMapper._();

  static BreedMapper? _instance;
  static BreedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BreedMapper._());
      BreedWeightMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Breed';

  static BreedWeight _$weight(Breed v) => v.weight;
  static const Field<Breed, BreedWeight> _f$weight = Field('weight', _$weight);
  static String _$id(Breed v) => v.id;
  static const Field<Breed, String> _f$id = Field('id', _$id);
  static String _$name(Breed v) => v.name;
  static const Field<Breed, String> _f$name = Field('name', _$name);
  static String? _$cfaUrl(Breed v) => v.cfaUrl;
  static const Field<Breed, String> _f$cfaUrl =
      Field('cfaUrl', _$cfaUrl, key: 'cfa_url', opt: true);
  static String? _$vetstreetUrl(Breed v) => v.vetstreetUrl;
  static const Field<Breed, String> _f$vetstreetUrl =
      Field('vetstreetUrl', _$vetstreetUrl, key: 'vetstreet_url', opt: true);
  static String? _$vcahospitalsUrl(Breed v) => v.vcahospitalsUrl;
  static const Field<Breed, String> _f$vcahospitalsUrl = Field(
      'vcahospitalsUrl', _$vcahospitalsUrl,
      key: 'vcahospitals_url', opt: true);
  static String _$temperament(Breed v) => v.temperament;
  static const Field<Breed, String> _f$temperament =
      Field('temperament', _$temperament);
  static String _$origin(Breed v) => v.origin;
  static const Field<Breed, String> _f$origin = Field('origin', _$origin);
  static String _$countryCodes(Breed v) => v.countryCodes;
  static const Field<Breed, String> _f$countryCodes =
      Field('countryCodes', _$countryCodes, key: 'country_codes');
  static String _$countryCode(Breed v) => v.countryCode;
  static const Field<Breed, String> _f$countryCode =
      Field('countryCode', _$countryCode, key: 'country_code');
  static String _$description(Breed v) => v.description;
  static const Field<Breed, String> _f$description =
      Field('description', _$description);
  static String _$lifeSpan(Breed v) => v.lifeSpan;
  static const Field<Breed, String> _f$lifeSpan =
      Field('lifeSpan', _$lifeSpan, key: 'life_span');
  static int _$indoor(Breed v) => v.indoor;
  static const Field<Breed, int> _f$indoor = Field('indoor', _$indoor);
  static int? _$lap(Breed v) => v.lap;
  static const Field<Breed, int> _f$lap = Field('lap', _$lap, opt: true);
  static String? _$altNames(Breed v) => v.altNames;
  static const Field<Breed, String> _f$altNames =
      Field('altNames', _$altNames, key: 'alt_names', opt: true);
  static int _$adaptability(Breed v) => v.adaptability;
  static const Field<Breed, int> _f$adaptability =
      Field('adaptability', _$adaptability);
  static int _$affectionLevel(Breed v) => v.affectionLevel;
  static const Field<Breed, int> _f$affectionLevel =
      Field('affectionLevel', _$affectionLevel, key: 'affection_level');
  static int _$childFriendly(Breed v) => v.childFriendly;
  static const Field<Breed, int> _f$childFriendly =
      Field('childFriendly', _$childFriendly, key: 'child_friendly');
  static int _$dogFriendly(Breed v) => v.dogFriendly;
  static const Field<Breed, int> _f$dogFriendly =
      Field('dogFriendly', _$dogFriendly, key: 'dog_friendly');
  static int _$energyLevel(Breed v) => v.energyLevel;
  static const Field<Breed, int> _f$energyLevel =
      Field('energyLevel', _$energyLevel, key: 'energy_level');
  static int _$grooming(Breed v) => v.grooming;
  static const Field<Breed, int> _f$grooming = Field('grooming', _$grooming);
  static int _$healthIssues(Breed v) => v.healthIssues;
  static const Field<Breed, int> _f$healthIssues =
      Field('healthIssues', _$healthIssues, key: 'health_issues');
  static int _$intelligence(Breed v) => v.intelligence;
  static const Field<Breed, int> _f$intelligence =
      Field('intelligence', _$intelligence);
  static int _$sheddingLevel(Breed v) => v.sheddingLevel;
  static const Field<Breed, int> _f$sheddingLevel =
      Field('sheddingLevel', _$sheddingLevel, key: 'shedding_level');
  static int _$socialNeeds(Breed v) => v.socialNeeds;
  static const Field<Breed, int> _f$socialNeeds =
      Field('socialNeeds', _$socialNeeds, key: 'social_needs');
  static int _$strangerFriendly(Breed v) => v.strangerFriendly;
  static const Field<Breed, int> _f$strangerFriendly =
      Field('strangerFriendly', _$strangerFriendly, key: 'stranger_friendly');
  static int _$vocalisation(Breed v) => v.vocalisation;
  static const Field<Breed, int> _f$vocalisation =
      Field('vocalisation', _$vocalisation);
  static int _$experimental(Breed v) => v.experimental;
  static const Field<Breed, int> _f$experimental =
      Field('experimental', _$experimental);
  static int _$hairless(Breed v) => v.hairless;
  static const Field<Breed, int> _f$hairless = Field('hairless', _$hairless);
  static int _$natural(Breed v) => v.natural;
  static const Field<Breed, int> _f$natural = Field('natural', _$natural);
  static int _$rare(Breed v) => v.rare;
  static const Field<Breed, int> _f$rare = Field('rare', _$rare);
  static int _$rex(Breed v) => v.rex;
  static const Field<Breed, int> _f$rex = Field('rex', _$rex);
  static int _$suppressedTail(Breed v) => v.suppressedTail;
  static const Field<Breed, int> _f$suppressedTail =
      Field('suppressedTail', _$suppressedTail, key: 'suppressed_tail');
  static int _$shortLegs(Breed v) => v.shortLegs;
  static const Field<Breed, int> _f$shortLegs =
      Field('shortLegs', _$shortLegs, key: 'short_legs');
  static String? _$wikipediaUrl(Breed v) => v.wikipediaUrl;
  static const Field<Breed, String> _f$wikipediaUrl =
      Field('wikipediaUrl', _$wikipediaUrl, key: 'wikipedia_url', opt: true);
  static int _$hypoallergenic(Breed v) => v.hypoallergenic;
  static const Field<Breed, int> _f$hypoallergenic =
      Field('hypoallergenic', _$hypoallergenic);
  static String? _$referenceImageId(Breed v) => v.referenceImageId;
  static const Field<Breed, String> _f$referenceImageId = Field(
      'referenceImageId', _$referenceImageId,
      key: 'reference_image_id', opt: true);

  @override
  final MappableFields<Breed> fields = const {
    #weight: _f$weight,
    #id: _f$id,
    #name: _f$name,
    #cfaUrl: _f$cfaUrl,
    #vetstreetUrl: _f$vetstreetUrl,
    #vcahospitalsUrl: _f$vcahospitalsUrl,
    #temperament: _f$temperament,
    #origin: _f$origin,
    #countryCodes: _f$countryCodes,
    #countryCode: _f$countryCode,
    #description: _f$description,
    #lifeSpan: _f$lifeSpan,
    #indoor: _f$indoor,
    #lap: _f$lap,
    #altNames: _f$altNames,
    #adaptability: _f$adaptability,
    #affectionLevel: _f$affectionLevel,
    #childFriendly: _f$childFriendly,
    #dogFriendly: _f$dogFriendly,
    #energyLevel: _f$energyLevel,
    #grooming: _f$grooming,
    #healthIssues: _f$healthIssues,
    #intelligence: _f$intelligence,
    #sheddingLevel: _f$sheddingLevel,
    #socialNeeds: _f$socialNeeds,
    #strangerFriendly: _f$strangerFriendly,
    #vocalisation: _f$vocalisation,
    #experimental: _f$experimental,
    #hairless: _f$hairless,
    #natural: _f$natural,
    #rare: _f$rare,
    #rex: _f$rex,
    #suppressedTail: _f$suppressedTail,
    #shortLegs: _f$shortLegs,
    #wikipediaUrl: _f$wikipediaUrl,
    #hypoallergenic: _f$hypoallergenic,
    #referenceImageId: _f$referenceImageId,
  };

  static Breed _instantiate(DecodingData data) {
    return Breed(
        weight: data.dec(_f$weight),
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        cfaUrl: data.dec(_f$cfaUrl),
        vetstreetUrl: data.dec(_f$vetstreetUrl),
        vcahospitalsUrl: data.dec(_f$vcahospitalsUrl),
        temperament: data.dec(_f$temperament),
        origin: data.dec(_f$origin),
        countryCodes: data.dec(_f$countryCodes),
        countryCode: data.dec(_f$countryCode),
        description: data.dec(_f$description),
        lifeSpan: data.dec(_f$lifeSpan),
        indoor: data.dec(_f$indoor),
        lap: data.dec(_f$lap),
        altNames: data.dec(_f$altNames),
        adaptability: data.dec(_f$adaptability),
        affectionLevel: data.dec(_f$affectionLevel),
        childFriendly: data.dec(_f$childFriendly),
        dogFriendly: data.dec(_f$dogFriendly),
        energyLevel: data.dec(_f$energyLevel),
        grooming: data.dec(_f$grooming),
        healthIssues: data.dec(_f$healthIssues),
        intelligence: data.dec(_f$intelligence),
        sheddingLevel: data.dec(_f$sheddingLevel),
        socialNeeds: data.dec(_f$socialNeeds),
        strangerFriendly: data.dec(_f$strangerFriendly),
        vocalisation: data.dec(_f$vocalisation),
        experimental: data.dec(_f$experimental),
        hairless: data.dec(_f$hairless),
        natural: data.dec(_f$natural),
        rare: data.dec(_f$rare),
        rex: data.dec(_f$rex),
        suppressedTail: data.dec(_f$suppressedTail),
        shortLegs: data.dec(_f$shortLegs),
        wikipediaUrl: data.dec(_f$wikipediaUrl),
        hypoallergenic: data.dec(_f$hypoallergenic),
        referenceImageId: data.dec(_f$referenceImageId));
  }

  @override
  final Function instantiate = _instantiate;

  static Breed fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Breed>(map);
  }

  static Breed fromJson(String json) {
    return ensureInitialized().decodeJson<Breed>(json);
  }
}

mixin BreedMappable {
  String toJson() {
    return BreedMapper.ensureInitialized().encodeJson<Breed>(this as Breed);
  }

  Map<String, dynamic> toMap() {
    return BreedMapper.ensureInitialized().encodeMap<Breed>(this as Breed);
  }

  BreedCopyWith<Breed, Breed, Breed> get copyWith =>
      _BreedCopyWithImpl(this as Breed, $identity, $identity);
  @override
  String toString() {
    return BreedMapper.ensureInitialized().stringifyValue(this as Breed);
  }

  @override
  bool operator ==(Object other) {
    return BreedMapper.ensureInitialized().equalsValue(this as Breed, other);
  }

  @override
  int get hashCode {
    return BreedMapper.ensureInitialized().hashValue(this as Breed);
  }
}

extension BreedValueCopy<$R, $Out> on ObjectCopyWith<$R, Breed, $Out> {
  BreedCopyWith<$R, Breed, $Out> get $asBreed =>
      $base.as((v, t, t2) => _BreedCopyWithImpl(v, t, t2));
}

abstract class BreedCopyWith<$R, $In extends Breed, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  BreedWeightCopyWith<$R, BreedWeight, BreedWeight> get weight;
  $R call(
      {BreedWeight? weight,
      String? id,
      String? name,
      String? cfaUrl,
      String? vetstreetUrl,
      String? vcahospitalsUrl,
      String? temperament,
      String? origin,
      String? countryCodes,
      String? countryCode,
      String? description,
      String? lifeSpan,
      int? indoor,
      int? lap,
      String? altNames,
      int? adaptability,
      int? affectionLevel,
      int? childFriendly,
      int? dogFriendly,
      int? energyLevel,
      int? grooming,
      int? healthIssues,
      int? intelligence,
      int? sheddingLevel,
      int? socialNeeds,
      int? strangerFriendly,
      int? vocalisation,
      int? experimental,
      int? hairless,
      int? natural,
      int? rare,
      int? rex,
      int? suppressedTail,
      int? shortLegs,
      String? wikipediaUrl,
      int? hypoallergenic,
      String? referenceImageId});
  BreedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BreedCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Breed, $Out>
    implements BreedCopyWith<$R, Breed, $Out> {
  _BreedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Breed> $mapper = BreedMapper.ensureInitialized();
  @override
  BreedWeightCopyWith<$R, BreedWeight, BreedWeight> get weight =>
      $value.weight.copyWith.$chain((v) => call(weight: v));
  @override
  $R call(
          {BreedWeight? weight,
          String? id,
          String? name,
          Object? cfaUrl = $none,
          Object? vetstreetUrl = $none,
          Object? vcahospitalsUrl = $none,
          String? temperament,
          String? origin,
          String? countryCodes,
          String? countryCode,
          String? description,
          String? lifeSpan,
          int? indoor,
          Object? lap = $none,
          Object? altNames = $none,
          int? adaptability,
          int? affectionLevel,
          int? childFriendly,
          int? dogFriendly,
          int? energyLevel,
          int? grooming,
          int? healthIssues,
          int? intelligence,
          int? sheddingLevel,
          int? socialNeeds,
          int? strangerFriendly,
          int? vocalisation,
          int? experimental,
          int? hairless,
          int? natural,
          int? rare,
          int? rex,
          int? suppressedTail,
          int? shortLegs,
          Object? wikipediaUrl = $none,
          int? hypoallergenic,
          Object? referenceImageId = $none}) =>
      $apply(FieldCopyWithData({
        if (weight != null) #weight: weight,
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (cfaUrl != $none) #cfaUrl: cfaUrl,
        if (vetstreetUrl != $none) #vetstreetUrl: vetstreetUrl,
        if (vcahospitalsUrl != $none) #vcahospitalsUrl: vcahospitalsUrl,
        if (temperament != null) #temperament: temperament,
        if (origin != null) #origin: origin,
        if (countryCodes != null) #countryCodes: countryCodes,
        if (countryCode != null) #countryCode: countryCode,
        if (description != null) #description: description,
        if (lifeSpan != null) #lifeSpan: lifeSpan,
        if (indoor != null) #indoor: indoor,
        if (lap != $none) #lap: lap,
        if (altNames != $none) #altNames: altNames,
        if (adaptability != null) #adaptability: adaptability,
        if (affectionLevel != null) #affectionLevel: affectionLevel,
        if (childFriendly != null) #childFriendly: childFriendly,
        if (dogFriendly != null) #dogFriendly: dogFriendly,
        if (energyLevel != null) #energyLevel: energyLevel,
        if (grooming != null) #grooming: grooming,
        if (healthIssues != null) #healthIssues: healthIssues,
        if (intelligence != null) #intelligence: intelligence,
        if (sheddingLevel != null) #sheddingLevel: sheddingLevel,
        if (socialNeeds != null) #socialNeeds: socialNeeds,
        if (strangerFriendly != null) #strangerFriendly: strangerFriendly,
        if (vocalisation != null) #vocalisation: vocalisation,
        if (experimental != null) #experimental: experimental,
        if (hairless != null) #hairless: hairless,
        if (natural != null) #natural: natural,
        if (rare != null) #rare: rare,
        if (rex != null) #rex: rex,
        if (suppressedTail != null) #suppressedTail: suppressedTail,
        if (shortLegs != null) #shortLegs: shortLegs,
        if (wikipediaUrl != $none) #wikipediaUrl: wikipediaUrl,
        if (hypoallergenic != null) #hypoallergenic: hypoallergenic,
        if (referenceImageId != $none) #referenceImageId: referenceImageId
      }));
  @override
  Breed $make(CopyWithData data) => Breed(
      weight: data.get(#weight, or: $value.weight),
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      cfaUrl: data.get(#cfaUrl, or: $value.cfaUrl),
      vetstreetUrl: data.get(#vetstreetUrl, or: $value.vetstreetUrl),
      vcahospitalsUrl: data.get(#vcahospitalsUrl, or: $value.vcahospitalsUrl),
      temperament: data.get(#temperament, or: $value.temperament),
      origin: data.get(#origin, or: $value.origin),
      countryCodes: data.get(#countryCodes, or: $value.countryCodes),
      countryCode: data.get(#countryCode, or: $value.countryCode),
      description: data.get(#description, or: $value.description),
      lifeSpan: data.get(#lifeSpan, or: $value.lifeSpan),
      indoor: data.get(#indoor, or: $value.indoor),
      lap: data.get(#lap, or: $value.lap),
      altNames: data.get(#altNames, or: $value.altNames),
      adaptability: data.get(#adaptability, or: $value.adaptability),
      affectionLevel: data.get(#affectionLevel, or: $value.affectionLevel),
      childFriendly: data.get(#childFriendly, or: $value.childFriendly),
      dogFriendly: data.get(#dogFriendly, or: $value.dogFriendly),
      energyLevel: data.get(#energyLevel, or: $value.energyLevel),
      grooming: data.get(#grooming, or: $value.grooming),
      healthIssues: data.get(#healthIssues, or: $value.healthIssues),
      intelligence: data.get(#intelligence, or: $value.intelligence),
      sheddingLevel: data.get(#sheddingLevel, or: $value.sheddingLevel),
      socialNeeds: data.get(#socialNeeds, or: $value.socialNeeds),
      strangerFriendly:
          data.get(#strangerFriendly, or: $value.strangerFriendly),
      vocalisation: data.get(#vocalisation, or: $value.vocalisation),
      experimental: data.get(#experimental, or: $value.experimental),
      hairless: data.get(#hairless, or: $value.hairless),
      natural: data.get(#natural, or: $value.natural),
      rare: data.get(#rare, or: $value.rare),
      rex: data.get(#rex, or: $value.rex),
      suppressedTail: data.get(#suppressedTail, or: $value.suppressedTail),
      shortLegs: data.get(#shortLegs, or: $value.shortLegs),
      wikipediaUrl: data.get(#wikipediaUrl, or: $value.wikipediaUrl),
      hypoallergenic: data.get(#hypoallergenic, or: $value.hypoallergenic),
      referenceImageId:
          data.get(#referenceImageId, or: $value.referenceImageId));

  @override
  BreedCopyWith<$R2, Breed, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _BreedCopyWithImpl($value, $cast, t);
}

class BreedWeightMapper extends ClassMapperBase<BreedWeight> {
  BreedWeightMapper._();

  static BreedWeightMapper? _instance;
  static BreedWeightMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BreedWeightMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BreedWeight';

  static String _$imperial(BreedWeight v) => v.imperial;
  static const Field<BreedWeight, String> _f$imperial =
      Field('imperial', _$imperial);
  static String _$metric(BreedWeight v) => v.metric;
  static const Field<BreedWeight, String> _f$metric = Field('metric', _$metric);

  @override
  final MappableFields<BreedWeight> fields = const {
    #imperial: _f$imperial,
    #metric: _f$metric,
  };

  static BreedWeight _instantiate(DecodingData data) {
    return BreedWeight(
        imperial: data.dec(_f$imperial), metric: data.dec(_f$metric));
  }

  @override
  final Function instantiate = _instantiate;

  static BreedWeight fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BreedWeight>(map);
  }

  static BreedWeight fromJson(String json) {
    return ensureInitialized().decodeJson<BreedWeight>(json);
  }
}

mixin BreedWeightMappable {
  String toJson() {
    return BreedWeightMapper.ensureInitialized()
        .encodeJson<BreedWeight>(this as BreedWeight);
  }

  Map<String, dynamic> toMap() {
    return BreedWeightMapper.ensureInitialized()
        .encodeMap<BreedWeight>(this as BreedWeight);
  }

  BreedWeightCopyWith<BreedWeight, BreedWeight, BreedWeight> get copyWith =>
      _BreedWeightCopyWithImpl(this as BreedWeight, $identity, $identity);
  @override
  String toString() {
    return BreedWeightMapper.ensureInitialized()
        .stringifyValue(this as BreedWeight);
  }

  @override
  bool operator ==(Object other) {
    return BreedWeightMapper.ensureInitialized()
        .equalsValue(this as BreedWeight, other);
  }

  @override
  int get hashCode {
    return BreedWeightMapper.ensureInitialized().hashValue(this as BreedWeight);
  }
}

extension BreedWeightValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BreedWeight, $Out> {
  BreedWeightCopyWith<$R, BreedWeight, $Out> get $asBreedWeight =>
      $base.as((v, t, t2) => _BreedWeightCopyWithImpl(v, t, t2));
}

abstract class BreedWeightCopyWith<$R, $In extends BreedWeight, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? imperial, String? metric});
  BreedWeightCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BreedWeightCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BreedWeight, $Out>
    implements BreedWeightCopyWith<$R, BreedWeight, $Out> {
  _BreedWeightCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BreedWeight> $mapper =
      BreedWeightMapper.ensureInitialized();
  @override
  $R call({String? imperial, String? metric}) => $apply(FieldCopyWithData({
        if (imperial != null) #imperial: imperial,
        if (metric != null) #metric: metric
      }));
  @override
  BreedWeight $make(CopyWithData data) => BreedWeight(
      imperial: data.get(#imperial, or: $value.imperial),
      metric: data.get(#metric, or: $value.metric));

  @override
  BreedWeightCopyWith<$R2, BreedWeight, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BreedWeightCopyWithImpl($value, $cast, t);
}
