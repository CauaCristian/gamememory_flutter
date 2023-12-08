import '../sequence.dart';
class SequenceProxy {
  Sequence? _realSequence;
  int? _userLevel;

  SequenceProxy(int userLevel) {
    _realSequence = Sequence();
    _userLevel = userLevel;
  }

  List<int> generateSequence() {
    List<int> sequence;
    switch (_userLevel) {
      case 1:
        sequence = _realSequence!.generateRandomSequence(0, 8, 5);
        break;
      case 2:
        sequence = _realSequence!.generateRandomSequence(0, 15, 10);
        break;
      case 3:
        sequence = _realSequence!.generateRandomSequence(0, 24, 15);
        break;
      default:
        sequence = [];
        break;
    }
    return sequence;
  }
}