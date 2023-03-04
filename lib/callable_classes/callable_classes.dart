main() {
  /*
  Callable Classes:
  To allow an instance of your Dart class to be called like a function , implement the call() method.
   */
  var e1 = Employee();
  //call the object as if it was a function
  var r = e1(11, 'employee');
  print(r);
}

class Employee {
  //attributes
  //methods
  // call() {
  //   print('You can call instance from this class as a function');
  // }
  String call(int x, String s) {
    return 'You can call instance from this class as a function with int $x and String $s';
  }
}
