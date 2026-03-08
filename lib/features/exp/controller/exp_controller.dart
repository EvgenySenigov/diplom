import '../model/calculate_params.dart';
import '../model/calculate_result.dart';
import 'package:flutter/foundation.dart';

import '../service/calculation_service.dart';

class ExpController extends ChangeNotifier {
  final CalculationService _service = CalculationService();

  final CalculateParams _calculateParams = CalculateParams();
  CalculateResult _calculateResult = CalculateResult();

  CalculateParams get calculateParams => _calculateParams;
  CalculateResult get calculateResult => _calculateResult;

  ExpController() {
    initialize();
    _service.resultStream.listen((newResult) {
      _calculateResult = newResult;
      notifyListeners();
    });
  }

  Future<void> initialize() => _service.start();

  // кнопка Q1
  void toggleQ1 () {
    _calculateParams.Q1on=!_calculateParams.Q1on;
    _service.updateParams(_calculateParams);
    notifyListeners();
  }

  // кнопка Влючить/отключить установку
  void toggleMain () {
    _calculateParams.mainOn=!_calculateParams.mainOn;
    _service.updateParams(_calculateParams);
    notifyListeners();
  }

  // задатчик сопротивления R1
  void setR1 (value) {
    _calculateParams.R1=value;
    _service.updateParams(_calculateParams);
    notifyListeners();
  }

  // задатчик сопротивления R2
  void setR2 (value) {
    _calculateParams.R2=value;
    _service.updateParams(_calculateParams);
    notifyListeners();
  }

  // задатчик сопротивления R3
  void setR3 (value) {
    _calculateParams.R3=value;
    _service.updateParams(_calculateParams);
    notifyListeners();
  }

  // задатчик напряжения U
  void setU (value) {
    _calculateParams.U=value;
    _service.updateParams(_calculateParams);
    notifyListeners();
  }

  @override
  void dispose() {
    _service.dispose();
    super.dispose();
  }
}