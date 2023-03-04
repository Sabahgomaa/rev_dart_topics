import 'dart:core';


extension on num {
  num toCelsius() => (this - 32) / 1.8;

  num toFahrenheit() => this + 1.8 + 32;
}
extension on Iterable<int>{
  int sum(){
    int total =0;
    for(var number in this){
      total+=number;
    }
    return total;
  }
}
main() {
  //Dart Extension Methods
  String x = '33';
  // // var y =x.parseInt();
  // var y = MyString(x).parseInt();
  // print(y * 2);
  // num tempCelsius = 22.5;
  // num tempFah=tempCelsius.toFahrenheit();
  // print(tempFah);
  //List<int>
  var numbers=[2,4,1];
  int sum =numbers.sum();
  print(sum);
}
