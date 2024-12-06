part of counter;

/// We are making this widget private by adding an underscore to the name
/// so it will not be accessible outside counter library since it's not needed for other features
class _CounterTextWidget extends StatelessWidget {
  const _CounterTextWidget({required this.counter, super.key});
  final int counter;

  @override
  Widget build(BuildContext context) {
    return Text('$counter');
  }
}
