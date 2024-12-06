part of counter;

class CounterScreen extends ConsumerStatefulWidget {
  const CounterScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CounterScreenState();
}

class _CounterScreenState extends ConsumerState<CounterScreen> {
  final provider = _CounterNotifier.provider;
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(provider);
    final notifier = ref.read(provider.notifier);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            _CounterTextWidget(counter: state.count),
            const SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: notifier.increment,
                  child: const Text('Increment'),
                ),
                ElevatedButton(
                  onPressed: notifier.decrement,
                  child: const Text('decrement'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
