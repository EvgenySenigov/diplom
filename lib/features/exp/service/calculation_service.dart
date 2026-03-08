import 'dart:async';
import 'dart:isolate';

import '../model/calculate_params.dart';
import '../model/calculate_result.dart';
import 'calculator.dart';

class CalculationService {
  Isolate? _isolate;
  SendPort? _sendPort;
  final _resultController = StreamController<CalculateResult>.broadcast();

  Stream<CalculateResult> get resultStream => _resultController.stream;

  Future<void> start() async {
    final receivePort = ReceivePort();
    _isolate = await Isolate.spawn(_isolateEntry, receivePort.sendPort);

    receivePort.listen((message) {
      if (message is SendPort) {
        _sendPort = message;
      } else if (message is CalculateResult) {
        _resultController.add(message);
      }
    });
  }

  void updateParams(CalculateParams params) {
    _sendPort?.send(params);
  }

  void dispose() {
    _isolate?.kill();
    _resultController.close();
  }

  static void _isolateEntry(SendPort callerSendPort) {
    final receivePort = ReceivePort();
    callerSendPort.send(receivePort.sendPort);

    receivePort.listen((message) {
      if (message is CalculateParams) {
        final result = calculateAll(message);
        callerSendPort.send(result);
      }
    });
  }
}