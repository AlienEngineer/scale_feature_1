import 'package:scale_framework/scale_framework.dart';

class IncrementStateManager extends StateManager<int> {
  IncrementStateManager() : super(0);

  increment() {
    pushNewState((oldState) => oldState + 1);
  }
}
