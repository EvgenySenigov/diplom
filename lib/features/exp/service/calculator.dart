import '../model/calculate_params.dart';
import '../model/calculate_result.dart';

CalculateResult calculateAll(CalculateParams calculateParams) {
  CalculateResult calculateResult = CalculateResult();

  if (calculateParams.mainOn) {
    calculateResult.U = calculateParams.U;
    calculateResult.RTotal = calculateParams.R1 + calculateParams.R2 + calculateParams.R3;

    if (calculateParams.Q1on) {
      calculateResult.I = calculateResult.U / calculateResult.RTotal;
      calculateResult.U1 = calculateResult.I * calculateParams.R1;
      calculateResult.U2 = calculateResult.I * calculateParams.R2;
      calculateResult.U3 = calculateResult.I * calculateParams.R3;

      double sumU = calculateResult.U1 + calculateResult.U2 + calculateResult.U3;
      calculateResult.voltageBalanceStatus = (calculateResult.U - sumU).abs() < 1e-6
          ? 'Баланс: нормальный'
          : 'Баланс: нарушен';
    } else {
      // Q1 разомкнут
      calculateResult.I = 0;
      calculateResult.U1 = 0;
      calculateResult.U2 = 0;
      calculateResult.U3 = 0;
      calculateResult.voltageBalanceStatus = 'Баланс: не применим';
    }
  }

  return calculateResult;
}