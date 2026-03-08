// Параметры для расчета
class CalculateParams {
  double U,
      R1,
      R2,
      R3;
  bool Q1on,
      mainOn;


  // конструктор
  CalculateParams(
      [
        this.U=10,
        this.R1=1,
        this.R2=10,
        this.R3=100,
        this.Q1on=false,
        this.mainOn=false,
      ]);
}