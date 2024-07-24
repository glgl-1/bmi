class BmiCalc {
  // Property
  late String resultStr;
  late double doubleWeight;
  late double doubleHeight;

  //Method
  BmiCalc(double doubleWeight, double doubleHeight)
  : this.doubleWeight = doubleWeight,
    this.doubleHeight = doubleHeight / 100; 
  

  BmiCalc.init();

  // Constructor
  clacAction(){

    double bmi = doubleWeight / (doubleHeight*doubleHeight);
    if(bmi < 18.4){
      resultStr = '저체중';
    }else if(bmi >= 18.5 && bmi <= 22.9){
      resultStr = '정상체중';
    }else if(bmi >= 23 && bmi <= 24.9){
      resultStr = '과체중';
    }else if(bmi >= 25 && bmi <= 29.9){
      resultStr = '비만';
    }else{
      resultStr = '고도비만';
    }
    return resultStr;
    
  }
}