part of counter;

class CounterScreen extends ConsumerStatefulWidget {
  const CounterScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CounterScreenState();
}

class _CounterScreenState extends ConsumerState<CounterScreen> {
  final s1 = ScrollController();
  final s2 = ScrollController();
  final provider = _CounterNotifier.provider;
  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(provider.notifier);
    final state = ref.watch(provider);
    return Scaffold(
      body: Center(
        child: state.addedWidgets.isEmpty || state.removedWidgets.isEmpty
            ? GridView.count(
                crossAxisCount: state.addedWidgets.isEmpty ? state.removedWidgets.length : state.addedWidgets.length,
                children: state.addedWidgets.isEmpty
                    ? state.removedWidgets
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: GestureDetector(
                              onTap: () => notifier.addOrRemoveWidget(widget: e),
                              child: e.widget,
                            ),
                          ),
                        )
                        .toList()
                    : state.addedWidgets
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: GestureDetector(
                              onTap: () => notifier.addOrRemoveWidget(widget: e),
                              child: e.widget,
                            ),
                          ),
                        )
                        .toList(),
              )
            : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Consumer(builder: (context, ref, _) {
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: state.addedWidgets
                          .map(
                            (e) => Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: GestureDetector(
                                onTap: () => notifier.addOrRemoveWidget(widget: e),
                                child: e.widget,
                              ),
                            ),
                          )
                          .toList(),
                    );
                  }),
                  const SizedBox(
                    height: 100,
                  ),
                  Consumer(builder: (context, ref, _) {
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: state.removedWidgets
                          .map(
                            (e) => Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: GestureDetector(
                                onTap: () => notifier.addOrRemoveWidget(widget: e),
                                child: e.widget,
                              ),
                            ),
                          )
                          .toList(),
                    );
                  }),
                ],
              ),
      ),
    );
  }
}
