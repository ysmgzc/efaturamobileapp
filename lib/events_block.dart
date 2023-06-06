

// Events block
abstract class CustomEvent {}

class CheckboxToggled extends CustomEvent {
  final int index;

  CheckboxToggled(this.index);
}

class SendingToggled extends CustomEvent {}

