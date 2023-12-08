import '../model/sequenceProxy.dart';

class SequenceProxyControl {
  final SequenceProxy _sequenceProxy;

  SequenceProxyControl(int userLevel) : _sequenceProxy = SequenceProxy(userLevel);

  List<int> generateSequence() {
    return _sequenceProxy.generateSequence();
  }

}
