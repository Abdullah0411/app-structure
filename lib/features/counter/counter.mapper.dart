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

  static List<WidgetWithId> _$addedWidgets(CounterStateViewModel v) =>
      v.addedWidgets;
  static const Field<CounterStateViewModel, List<WidgetWithId>>
      _f$addedWidgets = Field('addedWidgets', _$addedWidgets);
  static List<WidgetWithId> _$removedWidgets(CounterStateViewModel v) =>
      v.removedWidgets;
  static const Field<CounterStateViewModel, List<WidgetWithId>>
      _f$removedWidgets = Field('removedWidgets', _$removedWidgets);

  @override
  final MappableFields<CounterStateViewModel> fields = const {
    #addedWidgets: _f$addedWidgets,
    #removedWidgets: _f$removedWidgets,
  };

  static CounterStateViewModel _instantiate(DecodingData data) {
    return CounterStateViewModel(
        addedWidgets: data.dec(_f$addedWidgets),
        removedWidgets: data.dec(_f$removedWidgets));
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
  ListCopyWith<$R, WidgetWithId, ObjectCopyWith<$R, WidgetWithId, WidgetWithId>>
      get addedWidgets;
  ListCopyWith<$R, WidgetWithId, ObjectCopyWith<$R, WidgetWithId, WidgetWithId>>
      get removedWidgets;
  $R call(
      {List<WidgetWithId>? addedWidgets, List<WidgetWithId>? removedWidgets});
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
  ListCopyWith<$R, WidgetWithId, ObjectCopyWith<$R, WidgetWithId, WidgetWithId>>
      get addedWidgets => ListCopyWith(
          $value.addedWidgets,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(addedWidgets: v));
  @override
  ListCopyWith<$R, WidgetWithId, ObjectCopyWith<$R, WidgetWithId, WidgetWithId>>
      get removedWidgets => ListCopyWith(
          $value.removedWidgets,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(removedWidgets: v));
  @override
  $R call(
          {List<WidgetWithId>? addedWidgets,
          List<WidgetWithId>? removedWidgets}) =>
      $apply(FieldCopyWithData({
        if (addedWidgets != null) #addedWidgets: addedWidgets,
        if (removedWidgets != null) #removedWidgets: removedWidgets
      }));
  @override
  CounterStateViewModel $make(CopyWithData data) => CounterStateViewModel(
      addedWidgets: data.get(#addedWidgets, or: $value.addedWidgets),
      removedWidgets: data.get(#removedWidgets, or: $value.removedWidgets));

  @override
  CounterStateViewModelCopyWith<$R2, CounterStateViewModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CounterStateViewModelCopyWithImpl($value, $cast, t);
}
