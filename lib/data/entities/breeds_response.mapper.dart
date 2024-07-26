// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'breeds_response.dart';

class BreedsResponseMapper extends ClassMapperBase<BreedsResponse> {
  BreedsResponseMapper._();

  static BreedsResponseMapper? _instance;
  static BreedsResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BreedsResponseMapper._());
      BreedMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BreedsResponse';

  static List<Breed> _$breeds(BreedsResponse v) => v.breeds;
  static const Field<BreedsResponse, List<Breed>> _f$breeds =
      Field('breeds', _$breeds);

  @override
  final MappableFields<BreedsResponse> fields = const {
    #breeds: _f$breeds,
  };

  static BreedsResponse _instantiate(DecodingData data) {
    return BreedsResponse(breeds: data.dec(_f$breeds));
  }

  @override
  final Function instantiate = _instantiate;

  static BreedsResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BreedsResponse>(map);
  }

  static BreedsResponse fromJson(String json) {
    return ensureInitialized().decodeJson<BreedsResponse>(json);
  }
}

mixin BreedsResponseMappable {
  String toJson() {
    return BreedsResponseMapper.ensureInitialized()
        .encodeJson<BreedsResponse>(this as BreedsResponse);
  }

  Map<String, dynamic> toMap() {
    return BreedsResponseMapper.ensureInitialized()
        .encodeMap<BreedsResponse>(this as BreedsResponse);
  }

  BreedsResponseCopyWith<BreedsResponse, BreedsResponse, BreedsResponse>
      get copyWith => _BreedsResponseCopyWithImpl(
          this as BreedsResponse, $identity, $identity);
  @override
  String toString() {
    return BreedsResponseMapper.ensureInitialized()
        .stringifyValue(this as BreedsResponse);
  }

  @override
  bool operator ==(Object other) {
    return BreedsResponseMapper.ensureInitialized()
        .equalsValue(this as BreedsResponse, other);
  }

  @override
  int get hashCode {
    return BreedsResponseMapper.ensureInitialized()
        .hashValue(this as BreedsResponse);
  }
}

extension BreedsResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BreedsResponse, $Out> {
  BreedsResponseCopyWith<$R, BreedsResponse, $Out> get $asBreedsResponse =>
      $base.as((v, t, t2) => _BreedsResponseCopyWithImpl(v, t, t2));
}

abstract class BreedsResponseCopyWith<$R, $In extends BreedsResponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Breed, BreedCopyWith<$R, Breed, Breed>> get breeds;
  $R call({List<Breed>? breeds});
  BreedsResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BreedsResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BreedsResponse, $Out>
    implements BreedsResponseCopyWith<$R, BreedsResponse, $Out> {
  _BreedsResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BreedsResponse> $mapper =
      BreedsResponseMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Breed, BreedCopyWith<$R, Breed, Breed>> get breeds =>
      ListCopyWith($value.breeds, (v, t) => v.copyWith.$chain(t),
          (v) => call(breeds: v));
  @override
  $R call({List<Breed>? breeds}) =>
      $apply(FieldCopyWithData({if (breeds != null) #breeds: breeds}));
  @override
  BreedsResponse $make(CopyWithData data) =>
      BreedsResponse(breeds: data.get(#breeds, or: $value.breeds));

  @override
  BreedsResponseCopyWith<$R2, BreedsResponse, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BreedsResponseCopyWithImpl($value, $cast, t);
}
