// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'counter.dart';

class CounterStateViewModelMapper
    extends ClassMapperBase<CounterStateViewModel> {
  CounterStateViewModelMapper._();

  static CounterStateViewModelMapper? _instance;
  static CounterStateViewModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CounterStateViewModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CounterStateViewModel';

  static int _$count(CounterStateViewModel v) => v.count;
  static const Field<CounterStateViewModel, int> _f$count =
      Field('count', _$count);

  @override
  final MappableFields<CounterStateViewModel> fields = const {
    #count: _f$count,
  };

  static CounterStateViewModel _instantiate(DecodingData data) {
    return CounterStateViewModel(count: data.dec(_f$count));
  }

  @override
  final Function instantiate = _instantiate;

  static CounterStateViewModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CounterStateViewModel>(map);
  }

  static CounterStateViewModel fromJson(String json) {
    return ensureInitialized().decodeJson<CounterStateViewModel>(json);
  }
}

mixin CounterStateViewModelMappable {
  String toJson() {
    return CounterStateViewModelMapper.ensureInitialized()
        .encodeJson<CounterStateViewModel>(this as CounterStateViewModel);
  }

  Map<String, dynamic> toMap() {
    return CounterStateViewModelMapper.ensureInitialized()
        .encodeMap<CounterStateViewModel>(this as CounterStateViewModel);
  }

  CounterStateViewModelCopyWith<CounterStateViewModel, CounterStateViewModel,
          CounterStateViewModel>
      get copyWith => _CounterStateViewModelCopyWithImpl(
          this as CounterStateViewModel, $identity, $identity);
  @override
  String toString() {
    return CounterStateViewModelMapper.ensureInitialized()
        .stringifyValue(this as CounterStateViewModel);
  }

  @override
  bool operator ==(Object other) {
    return CounterStateViewModelMapper.ensureInitialized()
        .equalsValue(this as CounterStateViewModel, other);
  }

  @override
  int get hashCode {
    return CounterStateViewModelMapper.ensureInitialized()
        .hashValue(this as CounterStateViewModel);
  }
}

extension CounterStateViewModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CounterStateViewModel, $Out> {
  CounterStateViewModelCopyWith<$R, CounterStateViewModel, $Out>
      get $asCounterStateViewModel =>
          $base.as((v, t, t2) => _CounterStateViewModelCopyWithImpl(v, t, t2));
}

abstract class CounterStateViewModelCopyWith<
    $R,
    $In extends CounterStateViewModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? count});
  CounterStateViewModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CounterStateViewModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CounterStateViewModel, $Out>
    implements CounterStateViewModelCopyWith<$R, CounterStateViewModel, $Out> {
  _CounterStateViewModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CounterStateViewModel> $mapper =
      CounterStateViewModelMapper.ensureInitialized();
  @override
  $R call({int? count}) =>
      $apply(FieldCopyWithData({if (count != null) #count: count}));
  @override
  CounterStateViewModel $make(CopyWithData data) =>
      CounterStateViewModel(count: data.get(#count, or: $value.count));

  @override
  CounterStateViewModelCopyWith<$R2, CounterStateViewModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CounterStateViewModelCopyWithImpl($value, $cast, t);
}
