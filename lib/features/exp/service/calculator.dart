import '../model/calculate_params.dart';
import '../model/calculate_result.dart';

CalculateResult calculateAll(CalculateParams calculateParams) {
  CalculateResult calculateResult = CalculateResult();

  if (calculateParams.mainOn)
  {
    calculateResult.U = (calculateParams.mainOn) ? calculateParams.U : 0;
    calculateResult.I = (calculateParams.Q1on && calculateParams.mainOn)
        ? calculateResult.U /
            (calculateParams.R1 + calculateParams.R2 + calculateParams.R3)
        : 0;
    calculateResult.U1 = (calculateParams.Q1on && calculateParams.mainOn)
        ? calculateResult.I * calculateParams.R1
        : 0;
    calculateResult.U2 = (calculateParams.Q1on && calculateParams.mainOn)
        ? calculateResult.I * calculateParams.R2
        : 0;
    calculateResult.U3 = (calculateParams.Q1on && calculateParams.mainOn)
        ? calculateResult.I * calculateParams.R3
        : 0;
  }

  return calculateResult;
}