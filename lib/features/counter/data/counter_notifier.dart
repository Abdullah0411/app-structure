part of counter;

/// here will be the logic for the counter feature

class _CounterNotifier extends Notifier<CounterStateViewModel> {
  @override
  CounterStateViewModel build() {
    return CounterStateViewModel(
        addedWidgets: List.generate(
          2,
          (index) => WidgetWithId(
            id: '$index',
            widget: AnimatedTo.spring(
              globalKey: GlobalKey(),
              description: const SpringDescription(
                mass: 1.0,
                stiffness: 175,
                damping: 21,
              ),
              // curve: Curves.ease,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ),
        removedWidgets: List.generate(
          2,
          (index) => WidgetWithId(
            id: '${index + 2}',
            widget: AnimatedTo.spring(
              globalKey: GlobalKey(),
              description: const SpringDescription(
                mass: 1.0,
                stiffness: 175,
                damping: 21,
              ),
              // curve: Curves.ease,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ));
  }

  void addOrRemoveWidget({required WidgetWithId widget}) {
    final currentState = state;

    final isAlreadyAdded = currentState.addedWidgets.any((e) => e.id == widget.id);

    if (isAlreadyAdded) {
      state = currentState.copyWith(
        removedWidgets: [
          ...currentState.removedWidgets,
          widget,
        ],
        addedWidgets: currentState.addedWidgets.where((e) => e.id != widget.id).toList(),
      );
    } else {
      state = currentState.copyWith(
        addedWidgets: [
          ...currentState.addedWidgets,
          widget,
        ],
        removedWidgets: currentState.removedWidgets.where((e) => e.id != widget.id).toList(),
      );
    }
  }

  /// this is the provider that will be used to provide the notifier to the widgets
  static final provider = NotifierProvider<_CounterNotifier, CounterStateViewModel>(_CounterNotifier.new);
}
