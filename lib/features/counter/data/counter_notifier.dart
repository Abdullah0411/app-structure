part of counter;

/// here will be the logic for the counter feature

class _CounterNotifier extends Notifier<CounterStateViewModel> {
  @override
  CounterStateViewModel build() {
    return CounterStateViewModel(count: 0);
  }

  void increment() {
    /// state is a getter that returns the current state of the notifier
    final currentState = state;

    /// since this is not an async notier we can directly modify the state directly

    // state = state.copyWith(count: state.count + 1);
    state = currentState.copyWith(count: currentState.count + 1);
  }

  void decrement() {
    state = state.copyWith(count: state.count - 1);
  }

  /// this is the provider that will be used to provide the notifier to the widgets
  static final provider = NotifierProvider<_CounterNotifier, CounterStateViewModel>(_CounterNotifier.new);
}
