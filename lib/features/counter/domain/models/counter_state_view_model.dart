part of counter;

/// for each class you want to make it serializable you need to add the @MappableClass annotation
///* and write [with the same name with the suffix Mappable] for the generated file to know that this class is serializable

/// for current dart_mappale limitations we can't make the class that uses mappale to be privte
/// or the builder will not work so we have to expose it.
@MappableClass()
class CounterStateViewModel with CounterStateViewModelMappable {
  final List<WidgetWithId> addedWidgets;
  final List<WidgetWithId> removedWidgets;

  CounterStateViewModel({
    required this.addedWidgets,
    required this.removedWidgets,
  });
}

class WidgetWithId {
  final String id;
  final Widget widget;

  WidgetWithId({required this.id, required this.widget});
}
