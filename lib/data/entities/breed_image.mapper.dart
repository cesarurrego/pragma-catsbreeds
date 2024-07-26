// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'breed_image.dart';

class BreedImageMapper extends ClassMapperBase<BreedImage> {
  BreedImageMapper._();

  static BreedImageMapper? _instance;
  static BreedImageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BreedImageMapper._());
      BreedMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BreedImage';

  static String? _$id(BreedImage v) => v.id;
  static const Field<BreedImage, String> _f$id = Field('id', _$id, opt: true);
  static String? _$url(BreedImage v) => v.url;
  static const Field<BreedImage, String> _f$url =
      Field('url', _$url, opt: true);
  static List<Breed>? _$breeds(BreedImage v) => v.breeds;
  static const Field<BreedImage, List<Breed>> _f$breeds =
      Field('breeds', _$breeds, opt: true);
  static int? _$width(BreedImage v) => v.width;
  static const Field<BreedImage, int> _f$width =
      Field('width', _$width, opt: true);
  static int? _$height(BreedImage v) => v.height;
  static const Field<BreedImage, int> _f$height =
      Field('height', _$height, opt: true);

  @override
  final MappableFields<BreedImage> fields = const {
    #id: _f$id,
    #url: _f$url,
    #breeds: _f$breeds,
    #width: _f$width,
    #height: _f$height,
  };

  static BreedImage _instantiate(DecodingData data) {
    return BreedImage(
        id: data.dec(_f$id),
        url: data.dec(_f$url),
        breeds: data.dec(_f$breeds),
        width: data.dec(_f$width),
        height: data.dec(_f$height));
  }

  @override
  final Function instantiate = _instantiate;

  static BreedImage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BreedImage>(map);
  }

  static BreedImage fromJson(String json) {
    return ensureInitialized().decodeJson<BreedImage>(json);
  }
}

mixin BreedImageMappable {
  String toJson() {
    return BreedImageMapper.ensureInitialized()
        .encodeJson<BreedImage>(this as BreedImage);
  }

  Map<String, dynamic> toMap() {
    return BreedImageMapper.ensureInitialized()
        .encodeMap<BreedImage>(this as BreedImage);
  }

  BreedImageCopyWith<BreedImage, BreedImage, BreedImage> get copyWith =>
      _BreedImageCopyWithImpl(this as BreedImage, $identity, $identity);
  @override
  String toString() {
    return BreedImageMapper.ensureInitialized()
        .stringifyValue(this as BreedImage);
  }

  @override
  bool operator ==(Object other) {
    return BreedImageMapper.ensureInitialized()
        .equalsValue(this as BreedImage, other);
  }

  @override
  int get hashCode {
    return BreedImageMapper.ensureInitialized().hashValue(this as BreedImage);
  }
}

extension BreedImageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BreedImage, $Out> {
  BreedImageCopyWith<$R, BreedImage, $Out> get $asBreedImage =>
      $base.as((v, t, t2) => _BreedImageCopyWithImpl(v, t, t2));
}

abstract class BreedImageCopyWith<$R, $In extends BreedImage, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Breed, BreedCopyWith<$R, Breed, Breed>>? get breeds;
  $R call(
      {String? id, String? url, List<Breed>? breeds, int? width, int? height});
  BreedImageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BreedImageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BreedImage, $Out>
    implements BreedImageCopyWith<$R, BreedImage, $Out> {
  _BreedImageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BreedImage> $mapper =
      BreedImageMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Breed, BreedCopyWith<$R, Breed, Breed>>? get breeds =>
      $value.breeds != null
          ? ListCopyWith($value.breeds!, (v, t) => v.copyWith.$chain(t),
              (v) => call(breeds: v))
          : null;
  @override
  $R call(
          {Object? id = $none,
          Object? url = $none,
          Object? breeds = $none,
          Object? width = $none,
          Object? height = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (url != $none) #url: url,
        if (breeds != $none) #breeds: breeds,
        if (width != $none) #width: width,
        if (height != $none) #height: height
      }));
  @override
  BreedImage $make(CopyWithData data) => BreedImage(
      id: data.get(#id, or: $value.id),
      url: data.get(#url, or: $value.url),
      breeds: data.get(#breeds, or: $value.breeds),
      width: data.get(#width, or: $value.width),
      height: data.get(#height, or: $value.height));

  @override
  BreedImageCopyWith<$R2, BreedImage, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BreedImageCopyWithImpl($value, $cast, t);
}
